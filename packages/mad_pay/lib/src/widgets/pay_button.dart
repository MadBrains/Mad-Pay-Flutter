import 'dart:async';

import 'package:flutter/foundation.dart' show defaultTargetPlatform;

import 'package:flutter/material.dart';
import 'package:mad_pay/src/utils/debouncer.dart';

import 'package:mad_pay_platform_interface/mad_pay_platform_interface.dart';
import 'package:mad_pay_ios/mad_pay_ios.dart';
import 'package:mad_pay_android/mad_pay_android.dart';

import '../mad_pay.dart';

part 'apple_pay_button.dart';
part 'google_pay_button.dart';

/// On Payment Callback
typedef PaymentCallback = void Function(PaymentResponse? result);

/// On Error Callback
typedef ErrorCallback = void Function(Object? error);

abstract class _PayButton extends StatefulWidget {
  _PayButton(
    Key? key, {
    required this.onPaymentResult,
    required this.width,
    required this.height,
    required this.margin,
    this.onError,
    this.childIfUnavailable,
    this.loadingIndicator,
    Environment? environment,
  }) : super(key: key) {
    if (environment != null) {
      _payClient = MadPay(environment: environment);
    } else {
      _payClient = MadPay.withoutEnvironment();
    }
  }

  late final MadPay _payClient;

  final double width;
  final double height;
  final EdgeInsets margin;

  final PaymentCallback onPaymentResult;
  final ErrorCallback? onError;
  final Widget? childIfUnavailable;
  final Widget? loadingIndicator;

  final Debouncer debouncer = Debouncer(300);

  VoidCallback _defaultOnPressed(
      VoidCallback? onPressed, PaymentRequest request) {
    return () {
      debouncer.run(() async {
        onPressed?.call();

        try {
          final PaymentResponse? result =
              await _payClient.processingPayment(request);
          onPaymentResult(result);
        } catch (error) {
          onError?.call(error);
        }
      });
    };
  }

  List<TargetPlatform> get _supportedPlatforms;
  Widget get _payButton;

  bool get _isPlatformSupported =>
      _supportedPlatforms.contains(defaultTargetPlatform);

  @override
  _PayButtonState createState() => _PayButtonState();
}

class _PayButtonState extends State<_PayButton> with WidgetsBindingObserver {
  final StreamController<bool> availablePaymentsStatus =
      StreamController<bool>();

  AppLifecycleState? _lastState;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
    availablePaymentsStatus.addStream(Stream<bool>.fromFuture(checkPayments()));
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (_lastState == AppLifecycleState.paused &&
        state == AppLifecycleState.resumed) {
      availablePaymentsStatus
          .addStream(Stream<bool>.fromFuture(checkPayments()));
    }
    _lastState = state;
  }

  Future<bool> checkPayments() async {
    try {
      return await widget._payClient.checkPayments();
    } catch (error) {
      widget.onError?.call(error);
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!widget._isPlatformSupported) {
      return const SizedBox.shrink();
    }

    return StreamBuilder<bool>(
      stream: availablePaymentsStatus.stream,
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.data == true) {
            return Container(
              margin: widget.margin,
              width: widget.width,
              height: widget.height,
              child: widget._payButton,
            );
          } else {
            return _ButtonPlaceholder(
              margin: widget.margin,
              child: widget.childIfUnavailable,
            );
          }
        }

        return _ButtonPlaceholder(
          margin: widget.margin,
          child: widget.loadingIndicator,
        );
      },
    );
  }
}

class _ButtonPlaceholder extends StatelessWidget {
  const _ButtonPlaceholder({
    Key? key,
    this.child,
    required this.margin,
  }) : super(key: key);

  final Widget? child;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return child == null
        ? const SizedBox.shrink()
        : Container(margin: margin, child: child);
  }
}

import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart' show required;

import 'package:protobuf/protobuf.dart';

import 'constants.dart';
import 'models/models.dart';
import 'protos/mad_pay.pb.dart' as porto;

/// {@macro mad_pay}
class MadPay {
  /// {@template mad_pay}
  /// Payment channel controller
  /// {@endtemplate}
  MadPay({Environment environment = Environment.test}) {
    _setEnvironment(environment);
  }

  final MethodChannel _channel = const MethodChannel(kChannel);

  Future<Response> _invokeChannel(
    String method, [
    GeneratedMessage arguments,
  ]) async {
    return Response.fromBuffer(await _channel.invokeListMethod<int>(
        method, arguments?.writeToBuffer?.call()));
  }

  bool _hasError(Response response) => response.errorCode?.isEmpty == true;

  Future<void> _setEnvironment(Environment environment) async {
    final Response response = await _invokeChannel(
      kSwitchEnvironment,
      porto.EnvironmentRequest(environment: environment.toProto),
    );

    if (!_hasError(response)) {
      return Future<void>.error(response);
    }
  }

  /// Returns `true` if Apple/Google Pay is available on device
  Future<bool> checkPayments() async {
    final Response response = await _invokeChannel(kCheckPayments);

    if (_hasError(response)) {
      return response.success;
    } else {
      return Future<bool>.error(response);
    }
  }

  /// Returns `true` if Apple/Google Pay is available on device and there is at least one activated card
  ///
  /// You can set allowed payment networks in [paymentNetworks] parameter.
  /// See [PaymentNetwork]
  Future<bool> checkActiveCard({
    List<PaymentNetwork> paymentNetworks,
  }) async {
    final Response response = await _invokeChannel(
      kCheckActiveCard,
      porto.CheckActiveCardRequest(
          allowedPaymentNetworks:
              paymentNetworks.map((PaymentNetwork v) => v.toProto)),
    );

    if (_hasError(response)) {
      return response.success;
    } else {
      return Future<bool>.error(response);
    }
  }

  /// Process the payment and returns the token from Apple/Google pay
  Future<Map<String, String>> processingPayment({
    @required GoogleParameters google,
    @required AppleParameters apple,
    @required String currencyCode,
    @required String countryCode,
    @required List<PaymentItem> paymentItems,
    List<PaymentNetwork> paymentNetworks,
  }) async {
    final Response response = await _invokeChannel(
      kPayment,
      porto.PaymentRequest(
        google: Platform.isAndroid ? google.toProto : null,
        apple: Platform.isIOS ? apple.toProto : null,
        currencyCode: currencyCode,
        countryCode: countryCode,
        allowedPaymentNetworks:
            paymentNetworks.map((PaymentNetwork v) => v.toProto),
        paymentItems: paymentItems.map((PaymentItem v) => v.toProto),
      ),
    );

    if (_hasError(response)) {
      return response.data;
    } else {
      return Future<Map<String, String>>.error(response);
    }
  }
}

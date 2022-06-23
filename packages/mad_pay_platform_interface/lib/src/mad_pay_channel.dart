import 'dart:async';

import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform;
import 'package:flutter/services.dart';
import 'package:protobuf/protobuf.dart';

import 'constants.dart';
import 'mad_pay_interface.dart';
import 'models/models.dart';
import 'protos/mad_pay.pb.dart' as proto;

/// An implementation of [MadPayInterface] that uses method channels.
class MadPayChannel extends MadPayInterface {
  static const MethodChannel _channel = MethodChannel(kChannel);

  Future<Response> _invokeChannel(
    String method, [
    GeneratedMessage? arguments,
  ]) async {
    return Response.fromBuffer(
      await _channel.invokeListMethod<int>(
        method,
        arguments?.writeToBuffer(),
      ),
    );
  }

  bool _hasError(Response response) => response.errorCode?.isEmpty == true;

  @override
  Future<void> setEnvironment(Environment environment) async {
    final Response response = await _invokeChannel(
      kSwitchEnvironment,
      proto.EnvironmentRequest(environment: environment.toProto),
    );

    if (!_hasError(response)) {
      return Future<void>.error(response);
    }
  }

  @override
  Future<bool> checkPayments() async {
    final Response response = await _invokeChannel(kCheckPayments);

    if (_hasError(response)) {
      return response.success == true;
    } else {
      return Future<bool>.error(response);
    }
  }

  @override
  Future<bool> checkActiveCard({
    List<PaymentNetwork>? paymentNetworks,
  }) async {
    final Response response = await _invokeChannel(
      kCheckActiveCard,
      proto.CheckActiveCardRequest(
        allowedPaymentNetworks: paymentNetworks?.map((PaymentNetwork v) {
          return v.toProto;
        }),
      ),
    );

    if (_hasError(response)) {
      return response.success == true;
    } else {
      return Future<bool>.error(response);
    }
  }

  @override
  Future<PaymentResponse?> processingPayment(PaymentRequest request) async {
    if (defaultTargetPlatform == TargetPlatform.android &&
        request.google == null) {
      return Future<PaymentResponse>.error(
        Exception('"GoogleParameters" cannot be null'),
      );
    }

    if (defaultTargetPlatform == TargetPlatform.iOS && request.apple == null) {
      return Future<PaymentResponse>.error(
        Exception('"AppleParameters" cannot be null'),
      );
    }

    final Response response = await _invokeChannel(
      kPayment,
      proto.PaymentRequest(
        google: defaultTargetPlatform == TargetPlatform.android
            ? request.google?.toProto
            : null,
        apple: defaultTargetPlatform == TargetPlatform.iOS
            ? request.apple?.toProto
            : null,
        currencyCode: request.currencyCode,
        countryCode: request.countryCode,
        paymentItems: request.paymentItems.map((PaymentItem v) => v.toProto),
        allowedPaymentNetworks:
            request.paymentNetworks?.map((PaymentNetwork v) => v.toProto),
      ),
    );

    if (_hasError(response)) {
      return PaymentResponse(rawData: response.data);
    } else {
      return Future<PaymentResponse>.error(response);
    }
  }
}

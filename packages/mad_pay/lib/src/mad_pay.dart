import 'dart:async';

import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform;
import 'package:mad_pay_platform_interface/mad_pay_platform_interface.dart';
import 'package:mad_pay_platform_interface/mad_pay_platform_interface_private.dart';

/// {@macro mad_pay}
class MadPay {
  /// {@macro mad_pay}
  factory MadPay({Environment environment = Environment.test}) =>
      MadPay._(environment: environment);

  /// {@macro mad_pay}
  factory MadPay.withoutEnvironment() => MadPay._();

  /// {@template mad_pay}
  /// Payment controller
  /// {@endtemplate}
  MadPay._({Environment? environment}) {
    if (environment != null &&
        defaultTargetPlatform == TargetPlatform.android) {
      MadPayInterface.instance.setEnvironment(environment);
    }
  }

  /// Sets the `Environment` for payment. The default is: `Environment.test`
  ///
  /// Android only
  Future<void> setEnvironment({Environment environment = Environment.test}) =>
      MadPayInterface.instance.setEnvironment(environment);

  /// Returns `true` if Apple/Google Pay is available on device
  Future<bool> checkPayments() => MadPayInterface.instance.checkPayments();

  /// Returns `true` if Apple/Google Pay is available on device and there is at least one activate card
  ///
  /// You can set allowed payment networks in [paymentNetworks] parameter.
  /// See [PaymentNetwork]
  Future<bool> checkActiveCard({
    List<PaymentNetwork>? paymentNetworks,
  }) =>
      MadPayInterface.instance
          .checkActiveCard(paymentNetworks: paymentNetworks);

  /// Process the payment and returns the token from Apple/Google pay
  Future<PaymentResponse?> processingPayment(PaymentRequest request) =>
      MadPayInterface.instance.processingPayment(request);
}

import 'dart:async';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'mad_pay_channel.dart';
import 'models/models.dart';

/// The interface that implementations of MadPay must implement.
abstract class MadPayInterface extends PlatformInterface {
  /// Constructs a MadPayInterface.
  MadPayInterface() : super(token: _token);

  static MadPayInterface _instance = MadPayChannel();

  static const Object _token = Object();

  /// The default instance of [MadPayInterface] to use.
  ///
  /// Defaults to [MadPayChannel].
  static MadPayInterface get instance => _instance;

  /// Platform-specific plugins should set this with their own
  /// platform-specific class that extends [GeolocatorPlatform] when they
  /// register themselves.
  static set instance(MadPayInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// Sets the `Environment` for payment. The default is: `Environment.test`
  ///
  /// Android only
  Future<void> setEnvironment(Environment environment);

  /// Returns `true` if Apple/Google Pay is available on device
  Future<bool> checkPayments();

  /// Returns `true` if Apple/Google Pay is available on device and there is at least one activate card
  ///
  /// You can set allowed payment networks in [paymentNetworks] parameter.
  /// See [PaymentNetwork]
  Future<bool> checkActiveCard({
    List<PaymentNetwork>? paymentNetworks,
  });

  /// Process the payment and returns the token from Apple/Google pay
  Future<PaymentResponse?> processingPayment(PaymentRequest request);
}

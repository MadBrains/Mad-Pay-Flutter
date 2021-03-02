part of 'models.dart';

/// {@template environment}
/// Setup Payment Environment
/// {@endtemplate}
enum Environment {
  /// Environment for running in the test environment with relaxed application / merchant requirements.
  /// This environment is suggested for early development and for easily testing the Payments.
  ///
  /// * Does not require the application to be uploaded to the Apple Store / Google Play Store.
  /// * Does not require a Apple Developer Profile / Google Pay Developer Profile.
  /// * It uses production data, but at the end of the transaction you will receive a fake and non chargeable payment credential.
  /// * The user will see a warning message that the app is not recognized/verified
  test,

  /// Environment for running in production with the most stringent application / merchant requirements.
  ///
  /// * Requires the application is uploaded to the Apple Store / Google Play Store.
  /// * Requires a Apple Developer Profile / Google Pay Developer Profile to be used to enable Apple / Google Pay for the app.
  production,
}

/// Environment extension
extension EnvironmentX on Environment {
  /// Mapped this model to proto model
  porto.PaymentEnvironment get toProto =>
      porto.PaymentEnvironment.valueOf(index) ?? porto.PaymentEnvironment.TEST;
}

part of mad_pay;

/// {@macro adaptive_pay_button}
class AdaptivePayButton extends StatelessWidget {
  /// {@template adaptive_pay_button}
  /// Shows a platform-responsive payment button:
  /// - If iOS device shows Apple Pay button
  /// - If Android device shows Google Pay button
  /// {@endtemplate}
  const AdaptivePayButton({
    Key? key,
    required this.applePayButton,
    required this.googlePayButton,
  }) : super(key: key);

  /// Apple Pay button to show
  final ApplePayButton applePayButton;

  /// Google Pay button to show
  final GooglePayButton googlePayButton;

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.iOS) return applePayButton;
    if (defaultTargetPlatform == TargetPlatform.android) return googlePayButton;

    return const SizedBox.shrink();
  }
}

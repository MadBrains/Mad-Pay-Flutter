part of 'pay_button.dart';

/// {@macro apple_pay_button}
class ApplePayButton extends _PayButton {
  /// {@template apple_pay_button}
  /// Apple Pay button
  /// {@endtemplate}
  ApplePayButton({
    Key? key,
    required PaymentRequest request,
    required PaymentCallback onPaymentResult,
    VoidCallback? onPressed,
    ErrorCallback? onError,
    ApplePayButtonStyle style = ApplePayButtonStyle.black,
    ApplePayButtonType type = ApplePayButtonType.plain,
    double width = RawApplePayButton.minimumButtonWidth,
    double height = RawApplePayButton.minimumButtonHeight,
    EdgeInsets margin = EdgeInsets.zero,
    Widget? childIfUnavailable,
    Widget? loadingIndicator,
  })  : assert(width >= RawApplePayButton.minimumButtonWidth),
        assert(height >= RawApplePayButton.minimumButtonHeight),
        super(
          key,
          onPaymentResult: onPaymentResult,
          width: width,
          height: height,
          margin: margin,
          onError: onError,
          childIfUnavailable: childIfUnavailable,
          loadingIndicator: loadingIndicator,
        ) {
    _applePayButton = RawApplePayButton(
        style: style,
        type: type,
        onPressed: _defaultOnPressed(onPressed, request));
  }

  late final Widget _applePayButton;

  @override
  final List<TargetPlatform> _supportedPlatforms = <TargetPlatform>[
    TargetPlatform.iOS
  ];

  @override
  late final Widget _payButton = _applePayButton;
}

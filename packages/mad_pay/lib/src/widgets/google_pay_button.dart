part of mad_pay;

/// {@macro google_pay_button}
class GooglePayButton extends _PayButton {
  /// {@template google_pay_button}
  /// Google Pay button
  /// {@endtemplate}
  GooglePayButton({
    Key? key,
    Environment environment = Environment.test,
    required PaymentRequest request,
    required PaymentCallback onPaymentResult,
    VoidCallback? onPressed,
    ErrorCallback? onError,
    GooglePayButtonStyle style = GooglePayButtonStyle.black,
    GooglePayButtonType type = GooglePayButtonType.pay,
    double width = RawGooglePayButton.minimumButtonWidth,
    double height = RawGooglePayButton.defaultButtonHeight,
    EdgeInsets margin = EdgeInsets.zero,
    Widget? childIfUnavailable,
    Widget? loadingIndicator,
  })  : assert(width >= RawGooglePayButton.minimumButtonWidth),
        assert(height >= RawGooglePayButton.defaultButtonHeight),
        super(
          key,
          onPaymentResult: onPaymentResult,
          width: width,
          height: height,
          margin: margin,
          onError: onError,
          childIfUnavailable: childIfUnavailable,
          loadingIndicator: loadingIndicator,
          environment: environment,
        ) {
    _googlePayButton = RawGooglePayButton(
      style: style,
      type: type,
      onPressed: _defaultOnPressed(onPressed, request),
    );
  }

  late final Widget _googlePayButton;

  @override
  final List<TargetPlatform> _supportedPlatforms = <TargetPlatform>[
    TargetPlatform.android
  ];

  @override
  late final Widget _payButton = _googlePayButton;
}

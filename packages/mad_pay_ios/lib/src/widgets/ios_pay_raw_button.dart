part of '../../mad_pay_ios.dart';

/// {@macro raw_ios_pay_button}
class RawApplePayButton extends StatelessWidget {
  /// {@template raw_ios_pay_button}
  /// Raw button without Apple Pay processing logic
  /// {@endtemplate}
  RawApplePayButton({
    Key? key,
    this.onPressed,
    this.style = ApplePayButtonStyle.black,
    this.type = ApplePayButtonType.plain,
  })  : constraints = BoxConstraints.tightFor(
          width: type.minimumAssetWidth,
          height: minimumButtonHeight,
        ),
        super(key: key) {
    assert(constraints.debugAssertIsValid());
  }

  /// Minimum Raw Button Width
  static const double minimumButtonWidth = 100;

  /// Minimum Raw Button Height
  static const double minimumButtonHeight = 30;

  /// The additional constraints to impose on the child.
  final BoxConstraints constraints;

  /// Called when the button is tapped or otherwise activated.
  final VoidCallback? onPressed;

  /// [Button style](https://developer.apple.com/design/human-interface-guidelines/apple-pay/overview/buttons-and-marks/)
  final ApplePayButtonStyle style;

  /// [Button Type](https://developer.apple.com/documentation/apple_pay_on_the_web/displaying_apple_pay_buttons)
  final ApplePayButtonType type;

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform != TargetPlatform.iOS) {
      throw UnsupportedError(
        'This platform $defaultTargetPlatform does not support Apple Pay',
      );
    }

    return ConstrainedBox(
      constraints: constraints,
      child: _UiKitApplePayButton(
        onPressed: onPressed,
        style: style,
        type: type,
      ),
    );
  }
}

class _UiKitApplePayButton extends StatelessWidget {
  const _UiKitApplePayButton({
    Key? key,
    this.onPressed,
    this.style = ApplePayButtonStyle.black,
    this.type = ApplePayButtonType.plain,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final ApplePayButtonStyle style;
  final ApplePayButtonType type;

  @override
  Widget build(BuildContext context) {
    return UiKitView(
      viewType: kButtonChannel,
      creationParamsCodec: const StandardMessageCodec(),
      creationParams: <String, dynamic>{
        'style': style.enumString,
        'type': type.enumString
      },
      onPlatformViewCreated: (int viewId) {
        final MethodChannel methodChannel =
            MethodChannel('$kButtonChannel/$viewId');
        methodChannel.setMethodCallHandler((MethodCall call) async {
          if (call.method == 'onPressed') onPressed?.call();
          return;
        });
      },
    );
  }
}

part of '../../mad_pay_ios.dart';

/// [Button style](https://developer.apple.com/design/human-interface-guidelines/apple-pay/overview/buttons-and-marks/)
enum ApplePayButtonStyle {
  /// White
  white,

  /// White Outline
  whiteOutline,

  /// Black
  black,

  /// Automatic system-based, available from iOS 14.0
  automatic,
}

extension _ApplePayButtonStyleX on ApplePayButtonStyle {
  static const String _defaultButtonStyle = 'black';
  String get enumString =>
      <ApplePayButtonStyle, String>{
        ApplePayButtonStyle.white: 'white',
        ApplePayButtonStyle.whiteOutline: 'whiteOutline',
        ApplePayButtonStyle.black: _defaultButtonStyle,
        ApplePayButtonStyle.automatic: 'automatic',
      }[this] ??
      _defaultButtonStyle;
}

part of '../../mad_pay_android.dart';

/// {@macro raw_google_pay_button}
class RawGooglePayButton extends StatelessWidget {
  /// {@template raw_google_pay_button}
  /// Raw button without Google Pay processing logic
  /// {@endtemplate}
  const RawGooglePayButton({
    Key? key,
    this.onPressed,
    this.style = GooglePayButtonStyle.black,
    this.type = GooglePayButtonType.pay,
  }) : super(key: key);

  /// Minimum Raw Button Width
  static const double minimumButtonWidth = 54.0;

  /// Default Raw Button Height
  static const double defaultButtonHeight = 36;

  static const String _defaultLocale = 'en';
  static const List<String> _supportedLocales = <String>[
    _defaultLocale,
    'ar',
    'bg',
    'ca',
    'cs',
    'da',
    'de',
    'el',
    'es',
    'et',
    'fi',
    'fr',
    'hr',
    'id',
    'it',
    'ja',
    'ko',
    'ms',
    'nl',
    'no',
    'pl',
    'pt',
    'ru',
    'sk',
    'sl',
    'sr',
    'sv',
    'th',
    'tr',
    'uk',
    'zh'
  ];

  /// Called when the button is tapped or otherwise activated.
  final VoidCallback? onPressed;

  /// [Button style](https://developers.google.com/pay/api/web/guides/brand-guidelines#style
  final GooglePayButtonStyle style;

  /// Button type
  final GooglePayButtonType type;

  String _assetPath(BuildContext context) {
    final String assetName = '${type.asset}_${style.assetSuffix}.svg';
    if (<GooglePayButtonType>[
      GooglePayButtonType.plain,
      GooglePayButtonType.buy,
    ].contains(type)) {
      return 'assets/$assetName';
    }

    final String? langCode = Localizations.maybeLocaleOf(context)?.languageCode;
    final String? supportedLangCode =
        _supportedLocales.contains(langCode) ? langCode : _defaultLocale;

    return 'assets/$supportedLangCode/$assetName';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: style == GooglePayButtonStyle.white
          ? BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  offset: const Offset(0, 1),
                  blurRadius: 3,
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: const Offset(0, 1),
                  blurRadius: 1,
                )
              ],
            )
          : null,
      height: defaultButtonHeight,
      child: RawMaterialButton(
        fillColor:
            style == GooglePayButtonStyle.black ? Colors.black : Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        elevation: 0,
        focusElevation: 0,
        hoverElevation: 0,
        highlightElevation: 0,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: style == GooglePayButtonStyle.flat
              ? const BorderSide(
                  color: Color(0xFFDEDEDE),
                  width: 2,
                )
              : BorderSide.none,
        ),
        child: SvgPicture.asset(
          _assetPath(context),
          package: 'mad_pay_android',
          semanticsLabel: 'Buy with Google Pay text',
          height: 19,
        ),
      ),
    );
  }
}

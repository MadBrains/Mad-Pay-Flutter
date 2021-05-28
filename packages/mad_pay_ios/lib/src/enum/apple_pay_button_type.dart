part of '../../mad_pay_ios.dart';

/// [Button Type](https://developer.apple.com/documentation/apple_pay_on_the_web/displaying_apple_pay_buttons)
enum ApplePayButtonType {
  /// Apple Pay logo
  plain,

  /// A button with the text “Buy with” and the Apple Pay logo.
  buy,

  /// A button prompting the user to set up a card.
  setUp,

  /// A button with the text “In Store” and the Apple Pay logo, available from iOS 10.0
  inStore,

  /// A button with the text “Donate with” and the Apple Pay logo, available from iOS 10.2
  donate,

  /// A button with the text “Check out with” and the Apple Pay logo, available from iOS 12.0
  checkout,

  /// A button with the text “Book with” and the Apple Pay logo, available from iOS 12.0
  book,

  /// A button with the text “Subscribe with” and the Apple Pay logo, available from iOS 12.0
  subscribe,

  /// A button with the text “Reload with” and the Apple Pay logo, available from iOS 14.0
  reload,

  /// A button with the text “Add money with” and the Apple Pay logo, available from iOS 14.0
  addMoney,

  /// A button with the text “Top Up with” and the Apple Pay logo, available from iOS 14.0
  topUp,

  /// A button with the text “Order with” and the Apple Pay logo, available from iOS 14.0
  order,

  /// A button with the text “Rent with” and the Apple Pay logo, available from iOS 14.0
  rent,

  /// A button with the text “Support with” and the Apple Pay logo, available from iOS 14.0
  support,

  /// A button with the text “Contribute with” and the Apple Pay logo, available from iOS 14.0
  contribute,

  /// A button with the text “Tip with” and the Apple Pay logo, available from iOS 14.0
  tip
}

extension _ApplePayButtonTypeX on ApplePayButtonType {
  double get minimumAssetWidth => this == ApplePayButtonType.plain ? 100 : 140;

  static const String _defaultButtonType = 'plain';
  String get enumString =>
      <ApplePayButtonType, String>{
        ApplePayButtonType.plain: _defaultButtonType,
        ApplePayButtonType.buy: 'buy',
        ApplePayButtonType.setUp: 'setUp',
        ApplePayButtonType.inStore: 'inStore',
        ApplePayButtonType.donate: 'donate',
        ApplePayButtonType.checkout: 'checkout',
        ApplePayButtonType.book: 'book',
        ApplePayButtonType.subscribe: 'subscribe',
        ApplePayButtonType.reload: 'reload',
        ApplePayButtonType.addMoney: 'addMoney',
        ApplePayButtonType.topUp: 'topUp',
        ApplePayButtonType.order: 'order',
        ApplePayButtonType.rent: 'rent',
        ApplePayButtonType.support: 'support',
        ApplePayButtonType.contribute: 'contribute',
        ApplePayButtonType.tip: 'tip',
      }[this] ??
      _defaultButtonType;
}

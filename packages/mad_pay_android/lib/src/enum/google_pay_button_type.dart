part of '../../mad_pay_android.dart';

/// Button type
enum GooglePayButtonType {
  /// Book with Google Pay
  book,

  /// Buy with Google Pay
  buy,

  /// Checkout with Google Pay
  checkout,

  /// Donate with Google Pay
  donate,

  /// Order with Google Pay
  order,

  /// Pay with Google Pay
  pay,

  /// Google Pay logo
  plain,

  /// Subscribe with Google Pay
  subscribe,

  /// View in Google Pay
  view
}

extension _GooglePayButtonTypeX on GooglePayButtonType {
  static const String _defaultAsset = 'gpay_logo';

  String get asset =>
      <GooglePayButtonType, String>{
        GooglePayButtonType.book: 'book_with',
        GooglePayButtonType.buy: 'buy_with',
        GooglePayButtonType.checkout: 'checkout_with',
        GooglePayButtonType.donate: 'donate_with',
        GooglePayButtonType.order: 'order_with',
        GooglePayButtonType.pay: 'pay_with',
        GooglePayButtonType.plain: _defaultAsset,
        GooglePayButtonType.subscribe: 'subscribe_with',
        GooglePayButtonType.view: 'view_in'
      }[this] ??
      _defaultAsset;
}

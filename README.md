<h1 align="center">Flutter Mad Pay</h1>

<a href="https://madbrains.ru/"><img src="https://firebasestorage.googleapis.com/v0/b/mad-brains-web.appspot.com/o/logo.png?alt=media" width="200" align="right" style="margin: 20px;"/></a>

Easy integration with Google Pay and Apple Pay for your flutter app.

[Apple Pay API Documentation][apple].

[Google Pay API Documentation][google].

## SDK Features
* Pay with Apple Pay and Google Pay
* Checking payment availability on your device
* Checking the user's active cards

## Installing
Add this to your package's pubspec.yaml file:
```yaml
dependencies:
  mad_pay: 2.1.0
```

For Android: set `minSdkVersion` to 21

## Usage
To start using payment you need to get Merchant Identifier:
* [For Apple Pay][apple_merchant]
* [For Google Pay][google_merchant]

```dart
final MadPay pay = MadPay();

// To find out if payment is available on this device
await pay.checkPayments();

// If you need to check if user has at least one active card
await pay.checkActiveCard(
  paymentNetworks: <PaymentNetwork>[
    PaymentNetwork.visa,
    PaymentNetwork.mastercard,
  ],
);

// To pay with Apple Pay or Google Pay
await pay.processingPayment(
  google: GoogleParameters(
    gatewayName: 'Your Gateway',
    gatewayMerchantId: 'Your id',
  ),
  apple: AppleParameters(
    merchantIdentifier: 'Your id',
  ),
  currencyCode: 'USD',
  countryCode: 'US',
  paymentItems: <PaymentItem>[
    PaymentItem(name: 'T-Shirt', price: 2.98),
    PaymentItem(name: 'Trousers', price: 15.24),
  ],
  paymentNetworks: <PaymentNetwork>[
    PaymentNetwork.visa,
    PaymentNetwork.mastercard,
  ],
);
```

## Example
The [Example][example] is in the corresponding folder

## Payment Network matrix

| Payment Network   | iOS | Android |
|-------------------|-----|---------|
| Visa              | +   | +       |
| MasterCard        | +   | +       |
| American Express  | +   | +       |
| Interac           | +   | +       |
| Discover          | +   | +       |
| JCB               | +   | +       |
| Maestro           | +   |         |
| Electron          | +   |         |
| Cartes Bancarries | +   |         |
| Union Pay         | +   |         |
| EftPos            | +   |         |
| Elo               | +   |         |
| ID Credit         | +   |         |
| Mada              | +   |         |
| Private Label     | +   |         |
| Quic Pay          | +   |         |
| Suica             | +   |         |
| V Pay             | +   |         |
| Mir Pay           |     |         |

[apple]: https://developer.apple.com/documentation/passkit/apple_pay/setting_up_apple_pay_requirements
[google]: https://developers.google.com/pay/api/android/overview
[apple_merchant]: https://help.apple.com/developer-account/#/devb2e62b839?sub=dev103e030bb
[google_merchant]: https://developers.google.com/pay/api#participating-processors
[example]: https://github.com/MadBrains/Mad-Pay-Flutter/tree/main/example/
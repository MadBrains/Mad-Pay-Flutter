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
  mad_pay: 2.2.0
```

<details><summary><b>For Android</b></summary>
  <ul>
    <li>In the file <code>[project_name]/android/app/build.gradle</code>, set <code>minSdkVersion</code> to at least version 21.</li>
    <li>In the file <code>[project_name]/android/app/build.gradle</code>, add the line <code>proguardFiles getDefaultProguardFile('proguard-android-optimize.txt'), 'proguard-rules.pro'</code> to <code>buildTypes.release</code></li>
    <li>Create the <code>proguard-rules.pro</code> file in the <code>[project_name]/android/app</code> folder and add the line <code>-keep class * extends com.google.protobuf.GeneratedMessageLite { *; }</code></li>
  </ul>
</details>


## Usage
To start using payment you need to get Merchant Identifier:
* [For Apple Pay][apple_merchant]
* [For Google Pay][google_merchant]

### Use without buttons (for your design)
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
  PaymentRequest(
    google: GoogleParameters(
      gatewayName: 'Your Gateway',
      gatewayMerchantId: 'Your id',
      merchantId: 'example_id',
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
  )
);
```

### Using with buttons (by guideline)

Apple Pay button Widget (Native):

```dart
ApplePayButton(
  style: ApplePayButtonStyle.automatic,
  type: ApplePayButtonType.buy,
  request: PaymentRequest.apple(
    apple: AppleParameters(
      merchantIdentifier: 'Your id',
    ),
    currencyCode: 'USD',
    countryCode: 'US',
    paymentItems: <PaymentItem>[
      PaymentItem(name: 'T-Shirt', price: 2.98),
      PaymentItem(name: 'Trousers', price: 15.24),
    ],
  ),
  onPaymentResult: (PaymentResponse? req) {
    // ...
  },
  onError: (Object? e) {
    // ...
  },
);
```

Google Pay button Widget (Flutter):

```dart
GooglePayButton(
  type: GooglePayButtonType.plain,
  request: PaymentRequest.google(
    google: GoogleParameters(
      gatewayName: 'Your Gateway',
      gatewayMerchantId: 'Your id',
      merchantId: 'example_id',
    ),
    currencyCode: 'USD',
    countryCode: 'US',
    paymentItems: <PaymentItem>[
      PaymentItem(name: 'T-Shirt', price: 2.98),
      PaymentItem(name: 'Trousers', price: 15.24),
    ],
  ),
  onPaymentResult: (PaymentResponse? req) {
    // ...
  },
  onError: (Object? e) {
    // ...
  },
);
```

Adaptive Pay button Widget (uses ApplePayButton and GooglePayButton):

```dart
AdaptivePayButton(
  applePayButton: ApplePayButton(...),
  googlePayButton: GooglePayButton(...),
),
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
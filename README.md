<a href="https://madbrains.ru/?utm_source=gthb"><img src="docs/banner.png"></a>
<img align="left" src="docs/madpay.png" width="480" height="360" /></a>

<h1 align="center">Mad Pay</h1>
Easy integration with Google Pay and Apple Pay for your flutter app.

<p><h4> We solve problems of brand presence on mobile devices, specializing in development of mobile applications and services in the b2c segment.</h4>
<a href="https://madbrains.ru/?utm_source=gthb">
<img src="docs/get_started_stroke.png" width="249" height="45"></a>
</p>

<p><h5>Subscribe for the latest updates:</h5>
<a href="https://github.com/MadBrains" >
<img src="docs/follow_us_stroke.png" width="138" height="26"></a></p>
</br>

## SDK Features
* Pay with Apple Pay and Google Pay
* Checking payment availability on your device
* Checking the user's active cards

[Apple Pay API Documentation][apple].

[Google Pay API Documentation][google].

## Platform Support
| Android | iOS |
|:---:|:---:|
| Google Pay | Apple Pay |

## Packages
|  |  |
|:---:|:---:|
| mad_pay | [![pub package](https://img.shields.io/pub/v/mad_pay.svg)](https://pub.dartlang.org/packages/mad_pay) |
| mad_pay_ios | [![pub package](https://img.shields.io/pub/v/mad_pay_ios.svg)](https://pub.dartlang.org/packages/mad_pay_ios) |
| mad_pay_android | [![pub package](https://img.shields.io/pub/v/mad_pay_android.svg)](https://pub.dartlang.org/packages/mad_pay_android) |
| mad_pay_platform_interface | [![pub package](https://img.shields.io/pub/v/mad_pay_platform_interface.svg)](https://pub.dartlang.org/packages/mad_pay_platform_interface) |

## Getting started
Before you start, create an account with the payment providers you are planning to support and follow the setup instructions:

#### Apple Pay:
1. Take a look at the [integration requirements](https://developer.apple.com/documentation/passkit/apple_pay/setting_up_apple_pay_requirements).
2. Create a [merchant identifier](https://help.apple.com/developer-account/#/devb2e62b839?sub=dev103e030bb) for your business.
3. Create a [payment processing certificate](https://help.apple.com/developer-account/#/devb2e62b839?sub=devf31990e3f) to encrypt payment information.

#### Google Pay:
1. Take a look at the [integration requirements](https://developers.google.com/pay/api/android/overview).
2. Sign up to the [business console](https://pay.google.com/business/console) and create an account.


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
| Mir Pay           | +   | +       |
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
| Dankort           | +   |         |
| Nanaco            | +   |         |
| Waon              | +   |         |
| Girocard          | +   |         |
| BARCODE           | +   |         |

## Additional resources
Take a look at the following resources to manage your payment accounts and learn more about the APIs for the supported providers:

|  | Google Pay | Apple Pay |
|:---|:---|:---|
| Platforms | Android | iOS |
| Documentation | [Overview](https://developers.google.com/pay/api/android/overview) | [Overview](https://developer.apple.com/apple-pay/implementation/)
| Console | [Google Pay Business Console](https://pay.google.com/business/console/) |  [Developer portal](https://developer.apple.com/account/)  |
| Reference | [API reference](https://developers.google.com/pay/api/android/reference/client) | [Apple Pay API](https://developer.apple.com/documentation/passkit/apple_pay/)
| Style guidelines | [Brand guidelines](https://developers.google.com/pay/api/android/guides/brand-guidelines) | [Buttons and Marks](https://developer.apple.com/design/human-interface-guidelines/apple-pay/overview/buttons-and-marks/)

[apple]: https://developer.apple.com/documentation/passkit/apple_pay/setting_up_apple_pay_requirements
[google]: https://developers.google.com/pay/api/android/overview
[example]: https://github.com/MadBrains/Mad-Pay-Flutter/tree/main/example/

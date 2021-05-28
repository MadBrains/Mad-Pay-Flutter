<h1 align="center">Mad Pay</h1>

<a href="https://madbrains.ru/"><img src="https://firebasestorage.googleapis.com/v0/b/mad-brains-web.appspot.com/o/logo.png?alt=media" width="200" align="right" style="margin: 20px;"/></a>

Easy integration with Google Pay and Apple Pay for your flutter app.

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
[example]: https://github.com/MadBrains/Mad-Pay-Flutter/tree/main/example/
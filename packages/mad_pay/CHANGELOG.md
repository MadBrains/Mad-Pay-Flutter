## 2.2.8

* Bump `mad_pay_android` version to `2.2.7` (Bump `flutter_svg` version to `1.0.3`)
* Bump `mad_pay_ios` version to `2.2.4` (Added ability to provide multiple merchant capabilities)

## 2.2.7

* Bump `mad_pay_android` version to `2.2.6` (Added support for building on Apple Silicon)

## 2.2.6

* Bump `mad_pay_android` version to `2.2.5`
* Edit `AppLifecycle` in `PayButton`

## 2.2.5

* Fix typo `emailAddress`
* Bump `mad_pay_android` version to `2.2.4`
* Bump `mad_pay_ios` version to `2.2.3`
* Bump `mad_pay_platform_interface` version to `2.2.2`

## 2.2.4

* Bump `mad_pay_android` version
* Bump `mad_pay_ios` version
* Bump `mad_pay_platform_interface` version

## 2.2.3

* [iOS] Fix nil arguments

## 2.2.1-2.2.2

* [Android] Fix release build

# 2.2.0

* The library has been split into modules
* Added buttons: `AdaptivePayButton`, `ApplePayButton`, `GooglePayButton`
* Changed `processingPayment`, it now accepts a `PaymentRequest` model

## 2.1.3

* [iOS] checking `applicationData` for empty
* [Android] optional `merchantId`

## 2.1.2

* [Android] add `merchantId`

## 2.1.1

* [iOS] remove duplicate `PKPaymentAuthorizationController`

## 2.1.0

* `processingPayment` method returns raw payment data

## 2.0.4

* Change proto structure
* [Android] Add more Google Parameters

## 2.0.3

* export `CardAuthMethods`

## 2.0.2

* Change proto structure
* [iOS] Add more Apple Parameters

## 2.0.1

* [Android] Fix Dependency conflict with firebase
* [Android] Bump minSdkVersion to 21
* [Android] Enable multiDex

## 2.0.0

* Null safe migration
* Clean Swift code

## 1.0.0

* Initial stable release.

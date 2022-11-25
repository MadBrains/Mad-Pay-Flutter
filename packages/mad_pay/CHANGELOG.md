## 2.2.14

* bump deps

## 2.2.13

* Fixed a bug where the token gave an exception instead of a result
* Added getter tokenOrNull for null instead of exception

## 2.2.12

* New versioning, now all packages will be updated simultaneously, regardless of the number of changes in them.
* Add new Payment Networks
* Add support for Flutter 3
* Update Android dependences

## 2.2.11

* Bump `mad_pay_ios` version to `2.2.7` (Fix ios build)

## 2.2.10

* Fixed an issue with the payment network `interac` enum value being named incorrectly causing the OR_BIBED_01 error.

## 2.2.8-2.2.9

* Bump `mad_pay_android` version to `2.2.8` (Bump `flutter_svg` version to `1.0.3`)
* Bump `mad_pay_ios` version to `2.2.5` (Added ability to provide multiple merchant capabilities)
* Bump `mad_pay_platform_interface` version to `2.2.3`

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

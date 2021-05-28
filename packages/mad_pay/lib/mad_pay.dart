library mad_pay;

export 'package:mad_pay_platform_interface/mad_pay_platform_interface.dart';

export 'package:mad_pay_android/mad_pay_android.dart'
    show RawGooglePayButton, GooglePayButtonStyle, GooglePayButtonType;

export 'package:mad_pay_ios/mad_pay_ios.dart'
    show RawApplePayButton, ApplePayButtonStyle, ApplePayButtonType;

export 'src/widgets/pay_button.dart'
    show ApplePayButton, GooglePayButton, PaymentCallback, ErrorCallback;

export 'src/widgets/adaptive_pay_button.dart';

export 'src/mad_pay.dart';
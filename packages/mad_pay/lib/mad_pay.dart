library mad_pay;

export 'src/mad_pay.dart';

export 'src/widgets/adaptive_pay_button.dart';

export 'src/widgets/pay_button.dart'
    show ApplePayButton, GooglePayButton, PaymentCallback, ErrorCallback;

export 'package:mad_pay_platform_interface/mad_pay_platform_interface.dart';

export 'package:mad_pay_android/mad_pay_android.dart'
    show GooglePayButtonStyle, GooglePayButtonType;

export 'package:mad_pay_ios/mad_pay_ios.dart'
    show ApplePayButtonStyle, ApplePayButtonType;

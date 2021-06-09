library mad_pay;

import 'dart:async';

import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform;

import 'package:flutter/material.dart';

import 'package:mad_pay_ios/mad_pay_ios.dart';
import 'package:mad_pay_android/mad_pay_android.dart';
import 'package:mad_pay_platform_interface/mad_pay_platform_interface.dart';
import 'package:mad_pay_platform_interface/mad_pay_platform_interface_private.dart';

import 'package:mad_pay/src/utils/debouncer.dart';

export 'package:mad_pay_platform_interface/mad_pay_platform_interface.dart';
export 'package:mad_pay_android/mad_pay_android.dart';
export 'package:mad_pay_ios/mad_pay_ios.dart';

part 'src/mad_pay.dart';
part 'src/widgets/pay_button.dart';
part 'src/widgets/apple_pay_button.dart';
part 'src/widgets/google_pay_button.dart';
part 'src/widgets/adaptive_pay_button.dart';

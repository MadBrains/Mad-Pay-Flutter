#import "MadPayIosPlugin.h"
#if __has_include(<mad_pay_ios/mad_pay_ios-Swift.h>)
#import <mad_pay_ios/mad_pay_ios-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "mad_pay_ios-Swift.h"
#endif

@implementation MadPayIosPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMadPayIosPlugin registerWithRegistrar:registrar];
}
@end

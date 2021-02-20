#import "MadPayPlugin.h"
#if __has_include(<mad_pay/mad_pay-Swift.h>)
#import <mad_pay/mad_pay-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "mad_pay-Swift.h"
#endif

@implementation MadPayPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMadPayPlugin registerWithRegistrar:registrar];
}
@end

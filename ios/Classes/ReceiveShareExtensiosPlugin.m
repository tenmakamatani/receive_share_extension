#import "ReceiveShareExtensiosPlugin.h"
#if __has_include(<receive_share_extensios/receive_share_extensios-Swift.h>)
#import <receive_share_extensios/receive_share_extensios-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "receive_share_extensios-Swift.h"
#endif

@implementation ReceiveShareExtensiosPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftReceiveShareExtensiosPlugin registerWithRegistrar:registrar];
}
@end

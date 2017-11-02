#import <Cordova/CDVPlugin.h>

@interface SaveVideo : CDVPlugin {
	NSString* callbackId;
}

@property (nonatomic, copy) NSString* callbackId;

- (void)saveVideoToGallery:(CDVInvokedUrlCommand*)command;

@end

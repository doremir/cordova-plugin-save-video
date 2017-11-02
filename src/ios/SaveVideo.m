#import "SaveVideo.h"
#import <Cordova/CDV.h>

@implementation SaveVideo
@synthesize callbackId;

- (void)saveVideoToGallery:(CDVInvokedUrlCommand*)command {
	[self.commandDelegate runInBackground:^{
	    self.callbackId = command.callbackId;

		NSString *videoAbsolutePath = [command.arguments objectAtIndex:0];

        NSLog(@"Video absolute path: %@", videoAbsolutePath);

      UISaveVideoAtPathToSavedPhotosAlbum(videoAbsolutePath,self,@selector(video:didFinishSavingWithError:contextInfo:),nil);
	}];
}

- (void)dealloc {
	[callbackId release];
    [super dealloc];
}

- (void)video:(void *) video didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo {
    // Was there an error?
    if (error != NULL) {
        NSLog(@"SaveVideo, error: %@",error);
		CDVPluginResult* result = [CDVPluginResult resultWithStatus: CDVCommandStatus_ERROR messageAsString:error.description];
		[self.commandDelegate sendPluginResult:result callbackId:self.callbackId];
    } else {
        // No errors

        // Show message video successfully saved
        NSLog(@"SaveVideo, video saved");
		CDVPluginResult* result = [CDVPluginResult resultWithStatus: CDVCommandStatus_OK messageAsString:@"Video saved"];
		[self.commandDelegate sendPluginResult:result callbackId:self.callbackId];
    }
}

@end

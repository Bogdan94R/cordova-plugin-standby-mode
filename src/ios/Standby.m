#import "Standby.h"
#import <Cordova/CDV.h>

@implementation Standby


- (UIApplication*) app
{
    UIApplication*    app = [UIApplication sharedApplication];
    return app;
}

- (void)runBackground:(CDVInvokedUrlCommand*)command
{
    printf("Start task");
    _task = [self.app beginBackgroundTaskWithExpirationHandler:^{}];
    NSString *callbackId = command.callbackId;

    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:result callbackId:callbackId];
}

- (void)stopBackground:(CDVInvokedUrlCommand*)command
{
    printf("Stop task");
    NSString *callbackId = command.callbackId;

    [self.app endBackgroundTask:_task];
    _task = UIBackgroundTaskInvalid;

    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:result callbackId:callbackId];
}

@end

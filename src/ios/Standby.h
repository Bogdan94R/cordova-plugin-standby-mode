#import <Cordova/CDV.h>
@interface Standby : CDVPlugin

 @property (nonatomic, assign) UIBackgroundTaskIdentifier task;
 - (void)runBackground:(CDVInvokedUrlCommand*)command;
 - (void)stopBackground:(CDVInvokedUrlCommand*)command;

@end

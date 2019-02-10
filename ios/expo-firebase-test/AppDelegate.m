// Copyright 2015-present 650 Industries. All rights reserved.

#import "AppDelegate.h"

#import <Firebase/Firebase.h>
#import <EXFirebaseLinks/EXFirebaseLinks.h>

@import Firebase;

@implementation AppDelegate

// Put your app delegate methods here. Remember to also call methods from EXStandaloneAppDelegate superclass
// in order to keep Expo working. See example below.

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  [FIROptions defaultOptions].deepLinkURLScheme = @"com.apartmenttherapy.rnfirebasetest";
  [FIRApp configure];
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary<NSString *, id> *)options {
    return [[EXFirebaseLinks instance] application:application openURL:url options:options];
}

- (BOOL)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray *))restorationHandler {
    return [[EXFirebaseLinks instance] application:application continueUserActivity:userActivity restorationHandler:restorationHandler];
}

@end

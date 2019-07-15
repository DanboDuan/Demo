//
//  AppDelegate.m
//  Demo
//
//  Created by bob on 2019/2/11.
//  Copyright © 2019 bob. All rights reserved.
//

#import "AppDelegate.h"
#import "DemoViewController.h"
#import "SceneDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    if (@available(iOS 13, *)) {

    } else {
        UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[DemoViewController new]];
        window.rootViewController = nav;
        [window makeKeyAndVisible];
        self.window = window;
    }

    return YES;
}


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options API_AVAILABLE(ios(13.0)) {
    UISceneConfiguration *config = [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
    config.delegateClass = [SceneDelegate class];
    return config;
}

@end

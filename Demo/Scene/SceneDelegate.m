//
//  SceneDelegate.m
//  Demo
//
//  Created by bob on 2019/7/15.
//  Copyright © 2019 bob. All rights reserved.
//

#import "SceneDelegate.h"
#import "DemoViewController.h"

@implementation SceneDelegate

- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    if ([scene isKindOfClass:[UIWindowScene class]] && !self.window) {
        UIWindowScene *ws = (UIWindowScene *)scene;
        UIWindow *window = [[UIWindow alloc] initWithWindowScene:ws];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[DemoViewController new]];
        window.rootViewController = nav;
        [window makeKeyAndVisible];
        self.window = window;
    }
}

- (NSUserActivity *)stateRestorationActivityForScene:(UIScene *)scene {
    return scene.userActivity;
}

@end

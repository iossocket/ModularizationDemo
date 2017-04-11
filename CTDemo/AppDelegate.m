//
//  AppDelegate.m
//  CTDemo
//
//  Created by XueliangZhu on 07/04/2017.
//  Copyright © 2017 ThoughtWorks. All rights reserved.
//

#import "AppDelegate.h"
#import <ACategory/CTMediator+A.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    UIViewController *viewController = [[CTMediator sharedInstance] A_aViewController];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:viewController];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    return YES;
}

@end

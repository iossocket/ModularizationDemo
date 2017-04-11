//
//  Target_B.m
//  MainProject
//
//  Created by XueliangZhu on 10/04/2017.
//  Copyright © 2017 ThoughtWorks. All rights reserved.
//

#import "Target_B.h"
#import "BViewController.h"

@implementation Target_B

- (UIViewController *)Action_viewController:(NSDictionary *)params {
    NSString *contentText = params[@"contentText"];
    BViewController *viewController = [[BViewController alloc] initWithContentText:contentText];
    return viewController;
}

@end

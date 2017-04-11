//
//  CTMediator+C.m
//  CCategory
//
//  Created by XueliangZhu on 10/04/2017.
//  Copyright © 2017 ThoughtWorks. All rights reserved.
//

#import "CTMediator+C.h"

@implementation CTMediator (C)

- (UIViewController *)C_aViewController {
    return [self performTarget:@"C" action:@"viewController" params:nil shouldCacheTarget:NO];
}

@end

//
//  AViewController.m
//  MainProject
//
//  Created by XueliangZhu on 10/04/2017.
//  Copyright © 2017 ThoughtWorks. All rights reserved.
//

#import "AViewController.h"
#import <BCategory/CTMediator+B.h>

@interface AViewController ()
@property (nonatomic, strong) UIButton *pushBViewControllerButton;
@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.pushBViewControllerButton];
    self.navigationItem.title = @"A VC";
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];

    [self.pushBViewControllerButton sizeToFit];
    self.pushBViewControllerButton.center = self.view.center;
}

- (void)didTappedPushBViewControllerButton:(UIButton *)button {
    UIViewController *viewController = [[CTMediator sharedInstance] B_viewControllerWithContentText:@"hello, world!"];
    [self.navigationController pushViewController:viewController animated:YES];
}

- (UIButton *)pushBViewControllerButton {
    if (_pushBViewControllerButton == nil) {
        _pushBViewControllerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pushBViewControllerButton setTitle:@"push B view controller" forState:UIControlStateNormal];
        [_pushBViewControllerButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_pushBViewControllerButton addTarget:self action:@selector(didTappedPushBViewControllerButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _pushBViewControllerButton;
}

@end

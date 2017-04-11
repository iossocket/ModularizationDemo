//
//  BViewController.m
//  MainProject
//
//  Created by XueliangZhu on 10/04/2017.
//  Copyright © 2017 ThoughtWorks. All rights reserved.
//

#import "BViewController.h"
#import <CCategory/CTMediator+C.h>

@interface BViewController ()
@property (nonatomic, strong) UILabel *contentLabel;
@end

@implementation BViewController

- (instancetype)initWithContentText:(NSString *)contentText {
    self = [super init];
    if (self) {
        self.contentLabel.text = contentText;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.contentLabel];
    self.navigationItem.title = @"B VC";
    
    self.navigationItem.rightBarButtonItem =
        [[UIBarButtonItem alloc] initWithTitle:@"C" style:UIBarButtonItemStylePlain target:self action:@selector(didTappedPushCViewControllerButton:)];
}

- (void) didTappedPushCViewControllerButton:(UIBarButtonItem *)button {
    UIViewController *viewController = [[CTMediator sharedInstance] C_aViewController];
    [self.navigationController pushViewController:viewController animated:YES];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    [self.contentLabel sizeToFit];
    self.contentLabel.center = self.view.center;
}

- (UILabel *)contentLabel {
    if (_contentLabel == nil) {
        _contentLabel = [[UILabel alloc] init];
        _contentLabel.textColor = [UIColor blueColor];
    }
    return _contentLabel;
}

@end

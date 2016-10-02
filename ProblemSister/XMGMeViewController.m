//
//  XMGMeViewController.m
//  ProblemSister
//
//  Created by michael on 2016/10/2.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import "XMGMeViewController.h"

@interface XMGMeViewController ()

@end

@implementation XMGMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置导航栏标题
    self.navigationItem.title = @"我的";
    
    //设置导航栏右边的按钮
    UIButton *setttingButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [setttingButton setBackgroundImage:[UIImage imageNamed:@"mine-setting-icon"] forState:UIControlStateNormal];
    [setttingButton setBackgroundImage:[UIImage imageNamed:@"mine-setting-icon-click"] forState:UIControlStateHighlighted];
    setttingButton.size = setttingButton.currentBackgroundImage.size;
    [setttingButton addTarget:self action:@selector(setttingClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *nightModeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [nightModeButton setBackgroundImage:[UIImage imageNamed:@"mine-moon-icon"] forState:UIControlStateNormal];
    [nightModeButton setBackgroundImage:[UIImage imageNamed:@"mine-moon-icon-click"] forState:UIControlStateHighlighted];
    nightModeButton.size = nightModeButton.currentBackgroundImage.size;
    [nightModeButton addTarget:self action:@selector(nightModeClick) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItems = @[[[UIBarButtonItem alloc] initWithCustomView:setttingButton], [[UIBarButtonItem alloc] initWithCustomView:nightModeButton]];
}

- (void)setttingClick {
    XMGLogFunc;
}

- (void)nightModeClick {
    XMGLogFunc;
}

@end

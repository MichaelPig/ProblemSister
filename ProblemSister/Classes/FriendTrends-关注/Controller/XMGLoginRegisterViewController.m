//
//  XMGLoginRegisterViewController.m
//  ProblemSister
//
//  Created by michael on 2016/10/11.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import "XMGLoginRegisterViewController.h"

@interface XMGLoginRegisterViewController ()

/** 登录框距离控制器view左边的间距 */
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *loginViewLeftMargin;

@end

@implementation XMGLoginRegisterViewController


- (IBAction)back {
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)viewDidLoad {
    [super viewDidLoad];

}


- (IBAction)showLoginOrRegister:(UIButton *)sender {
    
    //退出键盘
    [self.view endEditing:YES];
    
    if (self.loginViewLeftMargin.constant == 0) {//显示注册界面
        self.loginViewLeftMargin.constant = - self.view.width;
        sender.selected = YES;
//        [sender setTitle:@"已有账号？" forState:UIControlStateNormal];
    }else{//显示登录界面
        self.loginViewLeftMargin.constant = 0;
        sender.selected = NO;
//        [sender setTitle:@"注册账号" forState:UIControlStateNormal];
    }
    
    
    [UIView animateWithDuration:0.25 animations:^{
        [self.view layoutIfNeeded];
    }];
}



/**
 * 让当前控制器对应的状态栏是白色
 */
- (UIStatusBarStyle)preferredStatusBarStyle {
    
    return UIStatusBarStyleLightContent;
    
}

@end

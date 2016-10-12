//
//  XMGLoginRegisterViewController.m
//  ProblemSister
//
//  Created by michael on 2016/10/11.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import "XMGLoginRegisterViewController.h"

@interface XMGLoginRegisterViewController ()

@property (weak, nonatomic) IBOutlet UITextField *phoneField;

@end

@implementation XMGLoginRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //文字
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    //NSAttributedString : 带有属性的文字（富文本技术）
    NSAttributedString *placeholder = [[NSAttributedString alloc] initWithString:@"手机号" attributes:attrs];
    self.phoneField.attributedPlaceholder = placeholder;

//    NSMutableAttributedString *placeholder = [[NSMutableAttributedString alloc] initWithString:@"手机号"];
//    [placeholder setAttributes:@{NSForegroundColorAttributeName : [UIColor yellowColor], NSFontAttributeName : [UIFont boldSystemFontOfSize: 30.0]} range:NSMakeRange(0, 1)];
//    self.phoneField.attributedPlaceholder = placeholder;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 * 让当前控制器对应的状态栏是白色
 */
- (UIStatusBarStyle)preferredStatusBarStyle {
    
    return UIStatusBarStyleLightContent;
    
}

@end

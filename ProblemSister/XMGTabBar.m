//
//  XMGTabBar.m
//  ProblemSister
//
//  Created by michael on 2016/10/2.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import "XMGTabBar.h"

@interface XMGTabBar()

//发布按钮
@property (nonatomic, weak) UIButton *publishButton;

@end

@implementation XMGTabBar

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        UIButton *publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateSelected];
        [self addSubview:publishButton];
        self.publishButton = publishButton;
        
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    //设置发布按钮的frame
    self.publishButton.bounds = CGRectMake(0, 0, self.publishButton.currentBackgroundImage.size.width, self.publishButton.currentBackgroundImage.size.height);
    self.publishButton.center = CGPointMake(self.frame.size.width * 0.5, self.frame.size.height * 0.5);
    
    //设置其他UITabBarButton的frame
    CGFloat buttonY = 0;
    CGFloat buttonW = self.frame.size.width / 5;
    CGFloat buttonH = self.frame.size.height;
    NSInteger index = 0;
    for (UIView *button in self.subviews) {
        if(![button isKindOfClass:NSClassFromString(@"UITabBarButton")]) continue;
//        if(![button isKindOfClass:NSClassFromString(@"UIControl")] || button == self.publishButton) continue;
        
        //计算按钮的x值
        CGFloat buttonX = buttonW * ((index > 1) ? (index + 1) : index);
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        
        //增加索引
        index++;
    }
}

@end

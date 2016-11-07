//
//  XMGPushGuideView.m
//  ProblemSister
//
//  Created by michael on 2016/11/7.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import "XMGPushGuideView.h"

@implementation XMGPushGuideView

+ (void)show {
    NSString *key = @"CFBundleShortVersionString";
    //获得当前软件的版本号
    NSString *currentVersion = [NSBundle mainBundle].infoDictionary[key];
    //获得沙盒中存储的版本号
    NSString *sandboxVersion = [[NSUserDefaults standardUserDefaults] stringForKey:key];
    if (![currentVersion isEqualToString:sandboxVersion]) {
        UIWindow *window = [UIApplication sharedApplication].keyWindow;
        
        XMGPushGuideView *guideView = [XMGPushGuideView guideView];
        guideView.frame = window.frame;
        [window addSubview:guideView];
        
        //存储版本号
        [[NSUserDefaults standardUserDefaults] setObject:currentVersion forKey:key];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}

+ (instancetype)guideView {
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}

- (IBAction)close {
    [self removeFromSuperview];
}



@end

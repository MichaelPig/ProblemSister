//
//  UIBarButtonItem+XMGExtension.m
//  ProblemSister
//
//  Created by michael on 2016/10/3.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import "UIBarButtonItem+XMGExtension.h"

@implementation UIBarButtonItem (XMGExtension)

+(instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[self alloc] initWithCustomView:button];
}

@end

//
//  XMGTextField.m
//  ProblemSister
//
//  Created by michael on 2016/10/12.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import "XMGTextField.h"
#import <objc/runtime.h>

static NSString * const XMGPlaceholderColorKeyPath = @"_placeholderLabel.textColor";

@implementation XMGTextField

//+ (void)initialize {
//
//    unsigned int count = 0;
//    
//    //拷贝出所有成员变量列表
//    Ivar *ivars = class_copyIvarList([UITextField class], &count);
//    
//    for (int i = 0; i < count; i++) {
//        //取出成员变量
//        Ivar ivar = *(ivars + i);
//        
//        //打印成员变量名字
//        XMGLog(@"%s", ivar_getName(ivar));
//    }
//    
//    //释放
//    free(ivars);
//    
//}

- (void)awakeFromNib {
    [super awakeFromNib];
//    UILabel *placeholder = [self valueForKeyPath:@"_placeholderLabel"];
//    placeholder.textColor = [UIColor redColor];

//    //修改占位文字颜色
//    [self setValue:[UIColor grayColor] forKeyPath:@"_placeholderLabel.textColor"];
    
    // 设置光标颜色和文字颜色一致
    self.tintColor = self.textColor;
    
    //不成为第一响应者
    [self resignFirstResponder];
}

/**
 * 当前文本框聚焦时就会调用
 */
- (BOOL)becomeFirstResponder {
    
    //修改占位文字颜色
    [self setValue:self.textColor forKeyPath:XMGPlaceholderColorKeyPath];
    return [super becomeFirstResponder];
}

/**
 * 当前文本框失去焦点时就会调用
 */
- (BOOL)resignFirstResponder {
    //修改占位文字颜色
    [self setValue:[UIColor grayColor] forKeyPath:XMGPlaceholderColorKeyPath];
    return [super resignFirstResponder];
}

//- (void)setHighlighted:(BOOL)highlighted {
//    
//    XMGLog(@"----%d", highlighted);
//    [self setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
//    
//}

//- (void)setPlaceholderColor:(UIColor *)placeholderColor {
//    _placeholderColor = placeholderColor;
//    
//    [self setValue:_placeholderColor forKeyPath:XMGPlaceholderColorKeyPath];
//}

/**
 运行时(Runtime):
 * 苹果官方一套C语言库
 * 能做很多底层操作(比如访问隐藏的一些成员变量/成员方法)
 */

@end

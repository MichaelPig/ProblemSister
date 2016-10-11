//
//  XMGVerticalButton.m
//  ProblemSister
//
//  Created by michael on 2016/10/11.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import "XMGVerticalButton.h"

@implementation XMGVerticalButton

- (void)setup{
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if(self == [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}


- (void)awakeFromNib {
    [super awakeFromNib];
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    //调整图片
    self.imageView.x = 0;
    self.imageView.y = 0;
    
    //调整文字
    self.titleLabel.x = 0;
    self.titleLabel.y = self.imageView.height;
    self.titleLabel.width = self.width;
    self.titleLabel.height = self.height - self.titleLabel.y;
    
}

/*
- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    //调整图片
    self.imageView.x = 0;
    self.imageView.y = 0;
    self.imageView.width = self.width;
    self.imageView.height = self.imageView.width;
    
    //调整文字
    self.titleLabel.x = 0;
    self.titleLabel.y = self.imageView.height;
    self.titleLabel.width = self.width;
    self.titleLabel.height = self.height - self.titleLabel.y;
}
 */

@end

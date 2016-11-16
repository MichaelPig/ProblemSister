//
//  XMGTopicCell.m
//  ProblemSister
//
//  Created by michael on 2016/11/16.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import "XMGTopicCell.h"

@implementation XMGTopicCell

- (void)awakeFromNib {
    
    [super awakeFromNib];
    
    UIImageView *bgView = [[UIImageView alloc] init];
    bgView.image = [UIImage imageNamed:@"mainCellBackground"];
    self.backgroundView = bgView;
    
}

- (void)setTopic:(XMGTopic *)topic {
    
    _topic = topic;
    
}

- (void)setFrame:(CGRect)frame {
    
    static CGFloat margin = 10;
    
    frame.origin.x = margin;
    frame.size.width -= 2 * margin;
    
    frame.size.height -= margin;
    frame.origin.y += margin;
    
    [super setFrame:frame];
}

@end

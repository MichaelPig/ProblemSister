//
//  XMGTopicCell.h
//  ProblemSister
//
//  Created by michael on 2016/11/16.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XMGTopic;

@interface XMGTopicCell : UITableViewCell

/** 帖子数据 */
@property (nonatomic, strong) XMGTopic *topic;

@end

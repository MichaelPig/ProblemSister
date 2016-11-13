//
//  XMGTopic.h
//  ProblemSister
//
//  Created by michael on 2016/11/13.
//  Copyright © 2016年 Michael. All rights reserved.
//  帖子

#import <Foundation/Foundation.h>

@interface XMGTopic : NSObject

/** 名称 */
@property (nonatomic, copy) NSString *name;
/** 头像 */
@property (nonatomic, copy) NSString *profile_image;
/** 发帖时间 */
@property (nonatomic, copy) NSString *create_time;
/** 文字内容 */
@property (nonatomic, copy) NSString *text;
/** 顶的数量 */
@property (nonatomic, assign) NSInteger ding;
/** 踩的数量 */
@property (nonatomic, assign) NSInteger cai;
/** 转发的数量 */
@property (nonatomic, assign) NSInteger repost;
/** 评论的数量 */
@property (nonatomic, assign) NSInteger comment;

@end

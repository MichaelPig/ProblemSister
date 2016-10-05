//
//  XMGRecommendCategory.h
//  ProblemSister
//
//  Created by michael on 2016/10/5.
//  Copyright © 2016年 Michael. All rights reserved.
// 推荐关注 左边的数据模型

#import <Foundation/Foundation.h>

@interface XMGRecommendCategory : NSObject

/** id */
@property (nonatomic, assign) NSInteger id;
/** 总数 */
@property (nonatomic, assign) NSInteger count;
/** 名字 */
@property (nonatomic, copy) NSString *name;


@end

//
//  XMGRecommendTags.h
//  ProblemSister
//
//  Created by michael on 2016/10/7.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XMGRecommendTags : NSObject

/** 图片 */
@property (nonatomic, copy) NSString *image_list;
/** 名字 */
@property (nonatomic, copy) NSString *theme_name;
/** 订阅数 */
@property (nonatomic, assign) NSInteger sub_number;

@end

//
//  XMGRecommendCategory.m
//  ProblemSister
//
//  Created by michael on 2016/10/5.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import "XMGRecommendCategory.h"

@implementation XMGRecommendCategory

-(NSMutableArray *)users {
    if (!_users) {
        _users = [NSMutableArray array];
    }
    return _users;
}

@end

//
//  XMGRecommendUserCell.m
//  ProblemSister
//
//  Created by michael on 2016/10/5.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import "XMGRecommendUserCell.h"
#import "XMGRecommendUser.h"
#import <UIImageView+WebCache.h>

@interface XMGRecommendUserCell()

@property (weak, nonatomic) IBOutlet UIImageView *headerImageView;
@property (weak, nonatomic) IBOutlet UILabel *screenNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *fansCountLabel;

@end

@implementation XMGRecommendUserCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setUsers:(XMGRecommendUser *)users {
    
    _users = users;
    
    self.screenNameLabel.text = users.screen_name;
    
    NSString *fansCount = nil;
    if (users.fans_count < 10000) {
        fansCount = [NSString stringWithFormat:@"%zd人订阅", users.fans_count];
    } else { //大于等于10000
        fansCount = [NSString stringWithFormat:@"%.1f人订阅", users.fans_count / 10000.0];
    }
    
    self.fansCountLabel.text = fansCount;
    [self.headerImageView sd_setImageWithURL:[NSURL URLWithString:users.header] placeholderImage:[UIImage imageNamed:@"defaultUserIcon"]];
    
}


@end

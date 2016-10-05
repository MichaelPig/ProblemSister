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
    self.fansCountLabel.text = [NSString stringWithFormat:@"%zd", users.fans_count];
    [self.headerImageView sd_setImageWithURL:[NSURL URLWithString:users.header] placeholderImage:[UIImage imageNamed:@"defaultUserIcon"]];
    
}


@end

//
//  XMGRecommendTagsCell.m
//  ProblemSister
//
//  Created by michael on 2016/10/8.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import "XMGRecommendTagsCell.h"
#import "XMGRecommendTags.h"
#import <UIImageView+WebCache.h>

@interface XMGRecommendTagsCell()

@property (weak, nonatomic) IBOutlet UIImageView *imageListImageView;
@property (weak, nonatomic) IBOutlet UILabel *themeNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *subNumberLabel;


@end

@implementation XMGRecommendTagsCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setRecommendTag:(XMGRecommendTags *)recommendTag {
    _recommendTag = recommendTag;
    
    [self.imageListImageView sd_setImageWithURL:[NSURL URLWithString:recommendTag.image_list] placeholderImage:[UIImage imageNamed:@"defaultUserIcon"]];
    
    self.themeNameLabel.text = recommendTag.theme_name;
    
    NSString *subNumber = nil;
    if (recommendTag.sub_number < 10000) {
        subNumber = [NSString stringWithFormat:@"%zd人订阅", recommendTag.sub_number];
    } else { //大于等于10000
        subNumber = [NSString stringWithFormat:@"%.1f人订阅", recommendTag.sub_number / 10000.0];
    }
    
    self.subNumberLabel.text = subNumber;
}

@end

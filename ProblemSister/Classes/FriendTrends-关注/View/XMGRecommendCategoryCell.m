//
//  XMGRecommendCategoryCell.m
//  ProblemSister
//
//  Created by michael on 2016/10/5.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import "XMGRecommendCategoryCell.h"
#import "XMGRecommendCategory.h"

@interface XMGRecommendCategoryCell()
//选中时显示的指示器控件
@property (weak, nonatomic) IBOutlet UIView *selecetedIndicator;

@end

@implementation XMGRecommendCategoryCell

- (void)awakeFromNib {
    [super awakeFromNib];

    self.backgroundColor = XMGRGBColor(244, 244, 244);
    self.selecetedIndicator.backgroundColor = XMGRGBColor(219, 21, 26);
    //当cell的selection为None时，cell被选中时，内部的子控件就不会进入高亮状态
//    self.textLabel.textColor = XMGRGBColor(78, 78, 78);

}

- (void)setCategory:(XMGRecommendCategory *)category{
    
    _category = category;
    
    self.textLabel.text = category.name;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    //重新调整内部textLabel的frame
    self.textLabel.y = 2;
    self.textLabel.height = self.contentView.height - 2 * self.textLabel.y;

}

/**
 * 可以在这个方法中监听cell的选中和取消选中
 */
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    self.selecetedIndicator.hidden = !selected;
    self.textLabel.textColor = selected ? XMGRGBColor(219, 21, 26) : XMGRGBColor(78, 78, 78);

}

@end

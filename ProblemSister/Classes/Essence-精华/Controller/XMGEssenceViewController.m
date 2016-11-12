//
//  XMGEssenceViewController.m
//  ProblemSister
//
//  Created by michael on 2016/10/2.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import "XMGEssenceViewController.h"
#import "XMGRecommendTagsViewController.h"

@interface XMGEssenceViewController ()

/** 标签栏底部的红色指示器 */
@property (nonatomic, weak) UIView *indicatorView;
/** 当前选中的按钮 */
@property (nonatomic, weak) UIButton *selectedButton;
/** 顶部的所有标签 */
@property (nonatomic, weak) UIView *titlesView;

@end

@implementation XMGEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置导航栏
    [self setupNav];
    
    //设置顶部的标签栏
    [self setupTitleView];
    
    //底部的scrollView
    [self setupContentView];
}

/**
 * 设置顶部的标签栏
 */
- (void)setupTitleView {
    
    //标签栏整体
    UIView *titleView = [[UIView alloc] init];
    titleView.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.5];
    titleView.width = self.view.width;
    titleView.height = 35;
    titleView.y = 64;
    titleView.alpha = 0.5;
    [self.view addSubview:titleView];
    self.titlesView = titleView;
    
    //底部的红色指示器
    UIView *indicatorView = [[UIView alloc] init];
    indicatorView.backgroundColor = [UIColor redColor];
    indicatorView.height = 2;
    indicatorView.y = titleView.height - indicatorView.height;
    [titleView addSubview:indicatorView];
    self.indicatorView = indicatorView;
    
    //内部的子标签
    NSArray *titles = @[@"全部",@"视频",@"声音",@"图片",@"段子"];
    CGFloat width = titleView.width / titles.count;
    CGFloat height = titleView.height;
    for (NSInteger i = 0; i < titles.count; i++) {
        UIButton *button = [[UIButton alloc] init];
        button.height = height;
        button.width = width;
        button.x = width * i;
        [button setTitle:titles[i] forState:UIControlStateNormal];
        [button layoutIfNeeded];//强制布局(强制更新子控件的frame)
        [button setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateDisabled];
        button.titleLabel.font = [UIFont systemFontOfSize:14];
        [button addTarget:self action:@selector(titleClick:) forControlEvents:UIControlEventTouchUpInside];
        [titleView addSubview:button];
        
        //默认点击了第一个按钮
        if (i == 0) {
            button.enabled = NO;
            self.selectedButton = button;
            
            self.indicatorView.width = button.titleLabel.width;
            self.indicatorView.centerX = button.centerX;
        }
    }
    
}

- (void)titleClick:(UIButton *)button {
    
    //修改按钮状态
    self.selectedButton.enabled = YES;
    button.enabled = NO;
    self.selectedButton = button;
    
    //动画
    [UIView animateWithDuration:0.25 animations:^{
        self.indicatorView.width = button.titleLabel.width;
        self.indicatorView.centerX = button.centerX;
    }];
    
}

/**
 * 底部的scrollView
 */
- (void)setupContentView {
    
    //不要自动调节inset
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    UIScrollView *contentView = [[UIScrollView alloc] init];
    contentView.backgroundColor = [UIColor blueColor];
    contentView.frame = self.view.bounds;
    //设置内边距
    CGFloat bottom = self.tabBarController.tabBar.height;
    CGFloat top = CGRectGetMaxY(self.titlesView.frame);
    contentView.contentInset = UIEdgeInsetsMake(top, 0, bottom, 0);
    [self.view insertSubview:contentView atIndex:0];
    
//    [contentView addSubview:[UIButton buttonWithType:UIButtonTypeContactAdd]];
//
//    UISwitch *s = [[UISwitch alloc] init];
//    s.y = 740;
//    [contentView addSubview:s];
//    [self.view addSubview:contentView];
//
//    contentView.contentSize = CGSizeMake(0, 800);
//    //    contentView.width = self.view.width;
    //    contentView.y = 99;
    //    contentView.height = self.view.height - contentView.y - self.tabBarController.tabBar.height;
}

/**
 * 设置导航栏
 */
- (void)setupNav {
    //设置导航栏标题
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    //设置导航栏左边的按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" target:self action:@selector(tagClick)];
    
    //设置背景色
    self.view.backgroundColor = XMGGlobalBg;
}

- (void)tagClick {
    
    XMGRecommendTagsViewController *tags = [[XMGRecommendTagsViewController alloc] init];
    
    [self.navigationController pushViewController:tags animated:YES];
    
}


@end

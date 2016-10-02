//
//  XMGFriendTrendsViewController.m
//  ProblemSister
//
//  Created by michael on 2016/10/2.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import "XMGFriendTrendsViewController.h"

@interface XMGFriendTrendsViewController ()

@end

@implementation XMGFriendTrendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置导航栏标题
    self.navigationItem.title = @"我的关注";
    
    //设置导航栏左边的按钮
    UIButton *friendsButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [friendsButton setBackgroundImage:[UIImage imageNamed:@"friendsRecommentIcon"] forState:UIControlStateNormal];
    [friendsButton setBackgroundImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] forState:UIControlStateHighlighted];
    friendsButton.size = friendsButton.currentBackgroundImage.size;
    [friendsButton addTarget:self action:@selector(friendsClick) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:friendsButton];
}

- (void)friendsClick {
    XMGLogFunc;
}


@end

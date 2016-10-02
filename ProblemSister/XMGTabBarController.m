//
//  XMGTabBarController.m
//  ProblemSister
//
//  Created by michael on 2016/10/2.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import "XMGTabBarController.h"

@interface XMGTabBarController ()

@end

@implementation XMGTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加子控制器
    UIViewController *vc01 = [[UIViewController alloc] init];
    vc01.tabBarItem.title = @"精华";
    vc01.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    vc01.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_essence_click_icon"];
    
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    [vc01.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    
    NSMutableDictionary *selectedattrs = [NSMutableDictionary dictionary];
    selectedattrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    selectedattrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    [vc01.tabBarItem setTitleTextAttributes:selectedattrs forState:UIControlStateSelected];
    //    UIImage *image = [UIImage imageNamed:@"tabBar_essence_click_icon"];
    //    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //    vc01.tabBarItem.selectedImage = image;
    vc01.view.backgroundColor = [UIColor redColor];
    [self addChildViewController:vc01];
    
    UIViewController *vc02 = [[UIViewController alloc] init];
    vc02.tabBarItem.title = @"新贴";
    vc02.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
    vc02.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_new_click_icon"];
    vc02.view.backgroundColor = [UIColor grayColor];
    [vc02.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [vc02.tabBarItem setTitleTextAttributes:selectedattrs forState:UIControlStateSelected];
    [self addChildViewController:vc02];
    
    UIViewController *vc03 = [[UIViewController alloc] init];
    vc03.tabBarItem.title = @"关注";
    vc03.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    vc03.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_friendTrends_click_icon"];
    vc03.view.backgroundColor = [UIColor greenColor];
    [vc03.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [vc03.tabBarItem setTitleTextAttributes:selectedattrs forState:UIControlStateSelected];
    [self addChildViewController:vc03];
    
    UIViewController *vc04 = [[UIViewController alloc] init];
    vc04.tabBarItem.title = @"我";
    vc04.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    vc04.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_me_click_icon"];
    vc04.view.backgroundColor = [UIColor blueColor];
    [vc04.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [vc04.tabBarItem setTitleTextAttributes:selectedattrs forState:UIControlStateSelected];
    [self addChildViewController:vc04];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

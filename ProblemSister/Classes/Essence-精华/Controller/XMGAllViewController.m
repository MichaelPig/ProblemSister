//
//  XMGAllViewController.m
//  ProblemSister
//
//  Created by michael on 2016/11/12.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import "XMGAllViewController.h"

@interface XMGAllViewController ()

@end

@implementation XMGAllViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //初始化表格
    [self setupTableView];
}

- (void)setupTableView {
    //设置内边距
    CGFloat bottom = self.tabBarController.tabBar.height;
    CGFloat top = XMGTitlesVIewY + XMGTitlesViewH;
    self.tableView.contentInset = UIEdgeInsetsMake(top, 0, bottom, 0);
    //设置滚动条内边距
    self.tableView.scrollIndicatorInsets = self.tableView.contentInset;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 50;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *ID = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
        cell.backgroundColor = [UIColor blueColor];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@----%zd",[self class], indexPath.row];
    
    return cell;
}


@end

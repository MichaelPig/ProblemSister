//
//  XMGRecommendTagsViewController.m
//  ProblemSister
//
//  Created by michael on 2016/10/7.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import "XMGRecommendTagsViewController.h"
#import "XMGRecommendTags.h"
#import <AFNetworking.h>
#import <SVProgressHUD.h>
#import <MJExtension.h>
#import "XMGRecommendTagsCell.h"

@interface XMGRecommendTagsViewController ()

/** 标签数组 */
@property (nonatomic, strong) NSArray *tags;

@end

static NSString * const XMGTagsId = @"tag";

@implementation XMGRecommendTagsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupTableView];
    
    [self loadTags];
}

- (void)loadTags {
    [SVProgressHUD show];
    
    //请求参数
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"a"] = @"tag_recommend";
    params[@"action"] = @"sub";
    params[@"c"] = @"topic";
    
    //发送请求
    [[AFHTTPSessionManager manager] GET:@"http://api.budejie.com/api/api_open.php" parameters:params progress:^(NSProgress * _Nonnull downloadProgress) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        self.tags = [XMGRecommendTags mj_objectArrayWithKeyValuesArray:responseObject];
        [self.tableView reloadData];
        
        [SVProgressHUD dismiss];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [SVProgressHUD showErrorWithStatus:@"加载标签数据失败"];
    }];
}

- (void)setupTableView {
    self.title = @"推荐标签";
    
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([XMGRecommendTagsCell class]) bundle:nil] forCellReuseIdentifier:XMGTagsId];
    self.tableView.rowHeight = 70;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.backgroundColor = XMGGlobalBg;
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tags.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    XMGRecommendTagsCell *cell = [tableView dequeueReusableCellWithIdentifier:XMGTagsId];
    
    cell.recommendTag = self.tags[indexPath.row];
    
    return cell;
}


@end

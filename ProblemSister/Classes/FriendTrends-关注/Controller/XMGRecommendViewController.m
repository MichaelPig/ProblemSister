//
//  XMGRecommendViewController.m
//  ProblemSister
//
//  Created by michael on 2016/10/4.
//  Copyright © 2016年 Michael. All rights reserved.
//

#import "XMGRecommendViewController.h"
#import <AFNetworking.h>
#import <SVProgressHUD.h>
#import "XMGRecommendCategoryCell.h"
#import <MJExtension.h>
#import "XMGRecommendCategory.h"

@interface XMGRecommendViewController () <UITableViewDataSource, UITableViewDelegate>

/** 左边的类型数据 */
@property (nonatomic, strong) NSArray *categories;
/** 左边的类型表格 */
@property (weak, nonatomic) IBOutlet UITableView *categoryTableView;

@end

@implementation XMGRecommendViewController

static NSString * const XMGCategoryId = @"category";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //注册
    [self.categoryTableView registerNib:[UINib nibWithNibName:NSStringFromClass([XMGRecommendCategoryCell class]) bundle:nil] forCellReuseIdentifier:XMGCategoryId];

    self.title = @"推荐关注";
    
    //设置背景色
    self.view.backgroundColor = XMGGlobalBg;
    
    //显示指示器
    [SVProgressHUD show];
    
    //发送请求
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"a"] = @"category";
    params[@"c"] = @"subscribe";
    [[AFHTTPSessionManager manager] GET:@"http://api.budejie.com/api/api_open.php" parameters:params progress:^(NSProgress * _Nonnull downloadProgress) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        //隐藏指示器
        [SVProgressHUD dismiss];
        //服务器返回的JSON数据
        self.categories = [XMGRecommendCategory mj_objectArrayWithKeyValuesArray:responseObject[@"list"]];
        
        //刷新表格
        [self.categoryTableView reloadData];
        
        //默认选中首行
        [self.categoryTableView selectRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0] animated:NO scrollPosition:UITableViewScrollPositionTop];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //显示失败信息
        [SVProgressHUD showErrorWithStatus:@"加载推荐信息失败"];
    }];
}

#pragma mark - <UITableViewDataSource>

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.categories.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    XMGRecommendCategoryCell *cell = [tableView dequeueReusableCellWithIdentifier:XMGCategoryId];
    
    cell.category = self.categories[indexPath.row];
    
    return cell;
}

@end

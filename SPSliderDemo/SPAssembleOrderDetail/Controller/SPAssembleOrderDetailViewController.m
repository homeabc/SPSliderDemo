//
//  SPAssembleOrderDetailViewController.m
//  SPSliderDemo
//
//  Created by hong on 2019/10/8.
//  Copyright © 2019 hong. All rights reserved.
//

#import "SPAssembleOrderDetailViewController.h"
#import "SPAssembleOrderDetailTableViewCell.h"
#import "SPAssembleOrderHeaderView.h"

#import "Masonry.h"

static NSString * const SPAssembleOrderDetailCellIdentifier    = @"SPAssembleOrderDetailCellIdentifier";


@interface SPAssembleOrderDetailViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) UITableView *tableView;

@property (strong, nonatomic) SPAssembleOrderHeaderView *headerView;


@end

@implementation SPAssembleOrderDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"拼单详细";
    
    self.view.backgroundColor = [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:1.0];

    [self addController];
    
    
}

- (void)addController
{
    
    self.headerView = [SPAssembleOrderHeaderView initXibWithFrame:CGRectMake(12, 64, self.view.frame.size.width-24, 121)];
    [self.view addSubview:self.tableView];
                       
                       
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(0);
        make.top.mas_equalTo(self.view.mas_top).offset(200);
    }];
    
}


- (void)addMiddleView
{
    
}


-(UITableView *)tableView
{
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.showsHorizontalScrollIndicator = NO;
        _tableView.showsVerticalScrollIndicator = NO;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.backgroundColor = [UIColor whiteColor];
        _tableView.estimatedRowHeight = 188.0f;
        _tableView.estimatedSectionFooterHeight = 0.0f;
        _tableView.estimatedSectionHeaderHeight = 0.0f;
        [_tableView registerNib:[UINib nibWithNibName:@"SPAssembleOrderDetailTableViewCell" bundle:nil] forCellReuseIdentifier:SPAssembleOrderDetailCellIdentifier];

    }
    return _tableView;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SPAssembleOrderDetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SPAssembleOrderDetailCellIdentifier];
    if (!cell) {
        cell = [[SPAssembleOrderDetailTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:SPAssembleOrderDetailCellIdentifier];
    }
    cell.buyButton.tag = indexPath.row;
    [cell.buyButton addTarget:self action:@selector(buyButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 174.0f;
}

- (void)buyButtonClick:(UIButton *)btn
{
    NSLog(@"%ld",(long)btn.tag);
}



@end

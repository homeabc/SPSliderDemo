//
//  SPAssembleOrderDetailViewController.m
//  SPSliderDemo
//
//  Created by hong on 2019/10/8.
//  Copyright © 2019 hong. All rights reserved.
//

#import "SPAssembleOrderDetailViewController.h"

static NSString * const SPAssembleOrderDetailCellIdentifier    = @"SPAssembleOrderDetailCellIdentifier";


@interface SPAssembleOrderDetailViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) UITableView *tableView;

@end

@implementation SPAssembleOrderDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
 
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
        _tableView.backgroundColor = [UIColor colorWithRed:235/255.0 green:234/255.0 blue:241/255.0 alpha:1];
        _tableView.estimatedRowHeight = 100;
        _tableView.estimatedSectionFooterHeight = 0.0f;
        _tableView.estimatedSectionHeaderHeight = 0.0f;
        
    }
    return _tableView;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SPAssembleOrderDetailCellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:SPAssembleOrderDetailCellIdentifier];
    }
    return cell;
}


@end

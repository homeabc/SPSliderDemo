//
//  SPAssembleOrderSonViewController.m
//  SPSliderDemo
//
//  Created by hong on 2019/9/29.
//  Copyright © 2019 hong. All rights reserved.
//

#import "SPAssembleOrderSonViewController.h"
#import "SPAssembleOrderSonTableViewCell.h"
#import "Masonry.h"

static NSString * const SPAssemOrderSonCellIdentifier            = @"SPAssemOrderSonCellIdentifier";



@interface SPAssembleOrderSonViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) NSDictionary *dict;

@property (strong, nonatomic) UITableView *tableView;

@end

@implementation SPAssembleOrderSonViewController

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    if (self = [super init]) {
        ;
    }
    return self;
}


- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    NSString *type = [self.dict objectForKey:@"type"];
    [self.view addSubview:self.tableView];
    
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.left.top.bottom.mas_equalTo(0);
    }];
    
    
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
        _tableView.estimatedRowHeight = 169;
        _tableView.estimatedSectionFooterHeight = 0.0f;
        _tableView.estimatedSectionHeaderHeight = 0.0f;
        [_tableView registerNib:[UINib nibWithNibName:@"SPAssembleOrderSonTableViewCell" bundle:nil] forCellReuseIdentifier:SPAssemOrderSonCellIdentifier];
        
    }
    return _tableView;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SPAssembleOrderSonTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SPAssemOrderSonCellIdentifier];
    if (!cell) {
        cell = [[SPAssembleOrderSonTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:SPAssemOrderSonCellIdentifier];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}

- (void)assembleButtonClick:(UIButton *)btn
{
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 169.0f;
}


@end

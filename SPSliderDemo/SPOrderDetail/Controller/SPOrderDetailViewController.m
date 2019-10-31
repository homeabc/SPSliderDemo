//
//  SPOrderDetailViewController.m
//  SPSliderDemo
//
//  Created by haitaoiOS on 2019/10/15.
//  Copyright © 2019 hong. All rights reserved.
//

#import "SPOrderDetailViewController.h"
#import "UIColor+SPAddition.h"
#import "SPPaddingLabel.h"
#import "Masonry.h"

#import "SPAddressView.h"
#import "SPGoodsListView.h"


@interface SPOrderDetailViewController ()


@property (strong, nonatomic) UIScrollView *scrollView;

/**
 已付款，代成团
 */
@property (strong, nonatomic) SPPaddingLabel *titleLabel;

@property (strong, nonatomic) SPAddressView *addressView;

@property (strong, nonatomic) SPGoodsListView *goodsListView;

@property (strong, nonatomic) UIView *moneyView;

@property (strong, nonatomic) UILabel *orderMoneyLabel;



@end

@implementation SPOrderDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"订单详情";
    
    self.view.backgroundColor = [UIColor colorWithHexString:@"#E6E6E6"];
    
    [self addController];
    
    
}

- (void)addController
{
    [self.view addSubview:self.scrollView];
    
    [self.scrollView addSubview:self.titleLabel];
    [self.scrollView addSubview:self.addressView];
    [self.scrollView addSubview:self.goodsListView];
    
    
    [self.scrollView addSubview:self.moneyView];
    [self.moneyView addSubview:self.orderMoneyLabel];
    [self.orderMoneyLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.moneyView.mas_left).offset(12);
        make.top.mas_equalTo(self.moneyView.mas_top).offset(15);
    }];
    
    
    UIView *lineView = [[UIView alloc] init];
    lineView.backgroundColor = [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:1.0];
    [self.moneyView addSubview:lineView];
    [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.moneyView.mas_left).offset(12);
        make.right.mas_equalTo(self.moneyView.mas_right).offset(-12);
        make.top.mas_equalTo(44);
        make.height.mas_equalTo(1);
    }];
    
    NSInteger height = 30;
    CGFloat maxY = 50;
    NSArray *titleArray = @[@"商品金额:",@"配送费用:",@"后台改价:",@"实付金额:"];
    for (NSInteger i=0; i<titleArray.count; i++) {
        UILabel *label = [[UILabel alloc] init];
        label.text = [titleArray objectAtIndex:i];
        label.textAlignment = NSTextAlignmentLeft;
        label.textColor = [UIColor colorWithHexString:@"#999999"];
        label.font = [UIFont systemFontOfSize:13];
        label.frame = CGRectMake(12, maxY+i*height, 100, height);
        [self.moneyView addSubview:label];
    }
    
    NSArray *priceArray = @[@"￥79.00",@"+￥79.00",@"-￥79.00",@"￥79.00"];
    for (NSInteger i=0; i<priceArray.count; i++) {
        UILabel *label = [[UILabel alloc] init];
        label.text = [priceArray objectAtIndex:i];
        label.textAlignment = NSTextAlignmentRight;
        label.textColor = [UIColor colorWithHexString:@"#FF4C65"];
        label.font = [UIFont systemFontOfSize:13];
        label.frame = CGRectMake(self.moneyView.frame.size.width-12-80, maxY+i*height, 80, height);
        [self.moneyView addSubview:label];
    }
    
    self.scrollView.contentSize = CGSizeMake(0, CGRectGetMaxY(self.moneyView.frame)+40);

}

-(UIScrollView *)scrollView
{
    if (_scrollView == nil) {
        _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-64)];
        _scrollView.showsVerticalScrollIndicator = NO;
        _scrollView.showsHorizontalScrollIndicator = NO;
     }
    return _scrollView;
}

-(SPPaddingLabel *)titleLabel
{
    if (_titleLabel == nil) {
        _titleLabel = [[SPPaddingLabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
        _titleLabel.text = @" 已付款，待成团";
        _titleLabel.font = [UIFont systemFontOfSize:16.0f];
        _titleLabel.edgeInsets = UIEdgeInsetsMake(24, 28, 24, 0);
        _titleLabel.textColor = [UIColor whiteColor];
        CAGradientLayer *gl = [CAGradientLayer layer];
        gl.frame = CGRectMake(0, 0, _titleLabel.frame.size.width, _titleLabel.frame.size.height);
        gl.startPoint = CGPointMake(0, 0);
        gl.endPoint = CGPointMake(1, 1);
        gl.colors = @[(__bridge id)[UIColor colorWithRed:254/255.0 green:108/255.0 blue:128/255.0 alpha:1.0].CGColor,(__bridge id)[UIColor colorWithRed:252/255.0 green:59/255.0 blue:86/255.0 alpha:1.0].CGColor];
        gl.locations = @[@(0.0),@(1.0)];
        [_titleLabel.layer addSublayer:gl];
    }
    return _titleLabel;
}
-(SPAddressView *)addressView
{
    if (_addressView == nil) {
        _addressView = [[SPAddressView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.titleLabel.frame), self.view.frame.size.width, 90)];
        _addressView.backgroundColor = [UIColor colorWithHexString:@"#E6E6E6"];
    }
    return _addressView;
}

-(SPGoodsListView *)goodsListView
{
    if (_goodsListView == nil) {
        _goodsListView = [[SPGoodsListView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.addressView.frame), self.view.frame.size.width, 230)];
        _goodsListView.backgroundColor = [UIColor whiteColor];
    }
    return _goodsListView;
}

-(UIView *)moneyView
{
    if (_moneyView == nil) {
        _moneyView = [[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.goodsListView.frame)+12, self.view.frame.size.width, 170)];
        _moneyView.backgroundColor = [UIColor whiteColor];
    }
    return _moneyView;
}

-(UILabel *)orderMoneyLabel;
{
    if (_orderMoneyLabel == nil) {
        _orderMoneyLabel = [[UILabel alloc] init];
        _orderMoneyLabel.font = [UIFont systemFontOfSize:15];
        _orderMoneyLabel.textColor = [UIColor colorWithHexString:@"#555555"];
        _orderMoneyLabel.text = @"订单金额";
        _orderMoneyLabel.textAlignment = NSTextAlignmentLeft;
    }
    return _orderMoneyLabel;
}




@end

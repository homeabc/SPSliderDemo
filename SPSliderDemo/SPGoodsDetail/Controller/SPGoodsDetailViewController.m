//
//  SPGoodsDetailViewController.m
//  SPSliderDemo
//
//  Created by haitaoiOS on 2019/10/21.
//  Copyright © 2019 hong. All rights reserved.
//

#import "SPGoodsDetailViewController.h"
#import "SDCycleScrollView.h"
#import "UIColor+SPAddition.h"
#import "Masonry.h"
#import "SPTopPriceView.H"
#import "UIButton+SPVertical.h"


@interface SPGoodsDetailViewController ()<SDCycleScrollViewDelegate>

@property (strong, nonatomic) SDCycleScrollView *cycleScrollView;


@property (strong, nonatomic) SPTopPriceView *topPriceView;


/**
 全球比价
 */
@property (strong, nonatomic) UIButton *comparativeButton;



/**
 展示商品名称介绍
 */
@property (strong, nonatomic) UILabel *showNameLabel;


/**
 分享按钮
 */
@property (strong, nonatomic) UIButton *shareButton;



/**
 详细标签
 */
@property (strong, nonatomic) UILabel *showDetailLabel;



/**
 选择按钮
 */
@property (strong, nonatomic) UIButton *chooseButton;


@end

@implementation SPGoodsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    [self addController];
}

- (void)addController
{
    self.cycleScrollView.frame = CGRectMake(0, 0, self.view.frame.size.width, 310);
    [self.view addSubview:self.cycleScrollView];
    
    self.comparativeButton.frame = CGRectMake(self.view.frame.size.width-72, 265, 60, 20);
    [self.view addSubview:self.comparativeButton];
    
    [self.view addSubview:self.topPriceView];
    
    [self.view addSubview:self.showNameLabel];
    [self.showNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view.mas_left).offset(12);
        make.top.mas_equalTo(self.topPriceView.mas_bottom).offset(12);
        make.right.mas_equalTo(self.view.mas_right).offset(-55);
    }];
    
    [self.view addSubview:self.showDetailLabel];
    [self.showDetailLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.showNameLabel.mas_left);
        make.top.mas_equalTo(self.showNameLabel.mas_bottom).offset(10.5);
    }];
    
    [self.view addSubview:self.shareButton];
    [self.shareButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.showNameLabel.mas_top);
        make.right.mas_equalTo(self.view.mas_right).offset(-12);
        make.size.mas_equalTo(CGSizeMake(23, 23));
    }];
    
    UIView *lineView =  [self creatCommonLineViewWithTopView:self.showDetailLabel offTopSet:12];
    
    [self.view addSubview:self.chooseButton];
    [self.chooseButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(lineView.mas_bottom);
        make.left.right.mas_equalTo(0);
        make.height.mas_equalTo(44);
    }];
    
    
}


- (UIView * )creatCommonLineViewWithTopView:(UIView *)topView offTopSet:(CGFloat)offTopSet
{
    UIView *lineView = [[UIView alloc] init];
    lineView.backgroundColor = [UIColor colorWithHexString:@"#eeeeee"];
    [self.view addSubview:lineView];
    [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.height.mas_equalTo(8);
        make.top.mas_equalTo(topView.mas_bottom).offset(offTopSet);
    }];
    
    return lineView;
}

#pragma mark - private click
- (void)comparativeButtonClick
{
    
}

- (void)shareButtonClick
{
    
}


-(SDCycleScrollView *)cycleScrollView
{
    if (_cycleScrollView == nil) {
        _cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectZero delegate:self placeholderImage:[UIImage imageNamed:@""]];
        _cycleScrollView.pageControlAliment = SDCycleScrollViewPageContolAlimentCenter;
        _cycleScrollView.currentPageDotColor = [UIColor whiteColor];
        _cycleScrollView.imageURLStringsGroup = @[];
    }
    return _cycleScrollView;
}

-(UIButton *)comparativeButton
{
    if (_comparativeButton == nil) {
        _comparativeButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _comparativeButton.backgroundColor = [UIColor colorWithHexString:@"#323232"];
        [_comparativeButton addTarget:self action:@selector(comparativeButtonClick) forControlEvents:UIControlEventTouchUpInside];
        _comparativeButton.titleLabel.font = [UIFont systemFontOfSize:11];
        _comparativeButton.layer.cornerRadius = 4.0f;
        [_comparativeButton setTitle:@"全球比价" forState:UIControlStateNormal];
        [_comparativeButton setTitleColor:[UIColor colorWithHexString:@"#FFFFFF"] forState:UIControlStateNormal];
    }
    return _comparativeButton;
}

-(SPTopPriceView *)topPriceView
{
    if (_topPriceView == nil) {
        _topPriceView = [[SPTopPriceView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.cycleScrollView.frame), self.view.frame.size.width, 49)];
    }
    return _topPriceView;
}

-(UILabel *)showNameLabel
{
    if (_showNameLabel == nil) {
        _showNameLabel = [[UILabel alloc] init];
        _showNameLabel.textColor = [UIColor colorWithHexString:@"#666666"];
        _showNameLabel.text = @"[2人团]阿玛尼烈焰唇膏丝绒哑光质地温和豆沙意想不到的美";
        _showNameLabel.numberOfLines = 0;
        _showNameLabel.font = [UIFont systemFontOfSize:15];
        [self createMutableStringShowNameLabel:_showNameLabel];
    }
    return _showNameLabel;
}

- (void)createMutableStringShowNameLabel:(UILabel *)showNameLabel
{
    NSString *string = [self.showNameLabel.text componentsSeparatedByString:@"]"].firstObject;
    NSRange range = NSMakeRange(0, string.length);
    NSMutableAttributedString *mutableAttring = [[NSMutableAttributedString alloc] initWithString:showNameLabel.text];
    [mutableAttring addAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#FF4C65"]} range:range];
    showNameLabel.attributedText = mutableAttring;
}

-(UILabel *)showDetailLabel
{
    if (_showDetailLabel == nil) {
        _showDetailLabel = [[UILabel alloc] init];
        _showDetailLabel.textColor = [UIColor colorWithHexString:@"#FF4C65"];
        _showDetailLabel.text = @"红色 丝柔哑光";
        _showDetailLabel.numberOfLines = 0;
        _showDetailLabel.font = [UIFont systemFontOfSize:13];
    }
    return _showDetailLabel;
}



-(UIButton *)shareButton
{
    if (_shareButton == nil) {
        _shareButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_shareButton setImage:[UIImage imageNamed:@"sp_share"] forState:UIControlStateNormal];
        [_shareButton addTarget:self action:@selector(shareButtonClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _shareButton;
}

-(UIButton *)chooseButton
{
    if (_chooseButton == nil) {
        _chooseButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_chooseButton setTitle:@"选择:" forState:UIControlStateNormal];
        _chooseButton.backgroundColor = [UIColor whiteColor];
        [_chooseButton setImage:[UIImage imageNamed:@"sp_choose"] forState:UIControlStateNormal];
        [_chooseButton setTitleColor:[ UIColor colorWithHexString:@"#B8B8B8"] forState:UIControlStateNormal];
        _chooseButton.titleLabel.font = [UIFont systemFontOfSize:13];
        [_chooseButton changeTitleAndImageLoaction:0];
    }
    return _chooseButton;
}


@end

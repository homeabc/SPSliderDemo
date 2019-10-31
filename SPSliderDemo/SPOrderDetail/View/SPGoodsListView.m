//
//  SPGoodsListView.m
//  SPSliderDemo
//
//  Created by haitaoiOS on 2019/10/18.
//  Copyright © 2019 hong. All rights reserved.
//

#import "SPGoodsListView.h"

#import "Masonry.h"
#import "UIColor+SPAddition.h"


@interface SPGoodsListView ()

@property (strong, nonatomic) UILabel *goodsListLabel;

@property (strong, nonatomic) UILabel *orderIdLabel;


@property (strong, nonatomic) UILabel *timeLabel;

@property (strong, nonatomic) UIImageView *iconImageView;

@property (strong, nonatomic) UILabel *nameLabel;

@property (strong, nonatomic) UILabel *numberLabel;

@property (strong, nonatomic) UILabel *priceLabel;

@property (strong, nonatomic) UILabel *totalPriceLabel;



@end

@implementation SPGoodsListView

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        [self setup];
        
    }
    return self;
}

- (void)setup
{
    [self addSubview:self.goodsListLabel];
    [self.goodsListLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.mas_left).offset(12);
        make.top.mas_equalTo(self.mas_top).offset(15);
    }];
    
    UIView *lineView = [[UIView alloc] init];
    lineView.backgroundColor = [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:1.0];
    [self addSubview:lineView];
    [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.mas_left).offset(12);
        make.right.mas_equalTo(self.mas_right).offset(-12);
        make.top.mas_equalTo(44);
        make.height.mas_equalTo(1);
    }];

    [self addSubview:self.orderIdLabel];
    [self.orderIdLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(lineView.mas_left);
        make.top.mas_equalTo(lineView.mas_bottom).offset(12);
        make.height.mas_equalTo(12);
    }];
    
    [self addSubview:self.timeLabel];
    [self.timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(lineView.mas_right);
        make.top.mas_equalTo(self.orderIdLabel.mas_top);
        make.height.mas_equalTo(12);
    }];
    
    [self addSubview:self.iconImageView];
    [self.iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(lineView.mas_left);
        make.top.mas_equalTo(self.mas_top).offset(80);
        make.size.mas_equalTo(CGSizeMake(100, 100));
    }];
    
    [self addSubview:self.nameLabel];
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.iconImageView.mas_right).offset(12);
        make.top.mas_equalTo(self.iconImageView.mas_top);
        make.right.mas_equalTo(self.mas_right).offset(-27);
    }];
    
    [self addSubview:self.numberLabel];
    [self.numberLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.nameLabel.mas_left);
        make.top.mas_equalTo(self.nameLabel.mas_bottom).offset(12);
    }];
    
    
    [self addSubview:self.priceLabel];
    [self.priceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.mas_right).offset(-12);
        make.top.mas_equalTo(self.numberLabel.mas_top);
    }];
    
    [self addSubview:self.totalPriceLabel];
    [self.totalPriceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.mas_right).offset(-12);
        make.bottom.mas_equalTo(self.mas_bottom).offset(-12);
    }];
    
}

-(UILabel *)goodsListLabel
{
    if (_goodsListLabel == nil) {
        _goodsListLabel = [[UILabel alloc] init];
        _goodsListLabel.font = [UIFont systemFontOfSize:15];
        _goodsListLabel.textColor = [UIColor colorWithHexString:@"#555555"];
        _goodsListLabel.text = @"商品列表";
        _goodsListLabel.textAlignment = NSTextAlignmentLeft;
    }
    return _goodsListLabel;
}

-(UILabel *)orderIdLabel
{
    if (_orderIdLabel == nil) {
        _orderIdLabel = [[UILabel alloc] init];
        _orderIdLabel.font = [UIFont systemFontOfSize:12];
        _orderIdLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _orderIdLabel.text = @"订单号";
        _orderIdLabel.textAlignment = NSTextAlignmentLeft;
    }
    return _orderIdLabel;
}

-(UILabel *)timeLabel
{
    if (_timeLabel == nil) {
        _timeLabel = [[UILabel alloc] init];
        _timeLabel.font = [UIFont systemFontOfSize:12];
        _timeLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _timeLabel.text = @"2019-19-18 13:19:55";
        _timeLabel.textAlignment = NSTextAlignmentLeft;
    }
    return _timeLabel;
}

-(UIImageView *)iconImageView
{
    if (_iconImageView == nil) {
        _iconImageView = [[UIImageView alloc] init];
        _iconImageView.backgroundColor = [UIColor redColor];
        
    }
    return _iconImageView;
}

-(UILabel *)nameLabel
{
    if (_nameLabel == nil) {
        _nameLabel = [[UILabel alloc] init];
        _nameLabel.font = [UIFont systemFontOfSize:12];
        _nameLabel.textColor = [UIColor colorWithHexString:@"#323232"];
        _nameLabel.text = @"澳洲进口急救手摸内白保湿胡守岁 度额外我如何让";
        _nameLabel.textAlignment = NSTextAlignmentLeft;
        _nameLabel.numberOfLines = 0;
    }
    return _nameLabel;
}

-(UILabel *)numberLabel
{
    if (_numberLabel == nil) {
        _numberLabel = [[UILabel alloc] init];
        _numberLabel.font = [UIFont systemFontOfSize:13];
        _numberLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _numberLabel.text = @"×1";
        _numberLabel.textAlignment = NSTextAlignmentLeft;
    }
    return _numberLabel;
}

-(UILabel *)priceLabel
{
    if (_priceLabel == nil) {
        _priceLabel = [[UILabel alloc] init];
        _priceLabel.font = [UIFont systemFontOfSize:13];
        _priceLabel.textColor = [UIColor colorWithHexString:@"#FF4C65"];
        _priceLabel.text = @"￥79.00";
        _priceLabel.textAlignment = NSTextAlignmentLeft;
    }
    return _priceLabel;
}

-(UILabel *)totalPriceLabel
{
    if (_totalPriceLabel == nil) {
        _totalPriceLabel = [[UILabel alloc] init];
        _totalPriceLabel.font = [UIFont systemFontOfSize:13];
        _totalPriceLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _totalPriceLabel.text = @"￥共1件商品，合计: ￥79.00";
        _totalPriceLabel.textAlignment = NSTextAlignmentLeft;
    }
    return _totalPriceLabel;
}
@end

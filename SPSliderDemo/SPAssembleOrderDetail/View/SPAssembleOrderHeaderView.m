//
//  SPAssembleOrderHeaderView.m
//  SPSliderDemo
//
//  Created by hong on 2019/10/8.
//  Copyright © 2019 hong. All rights reserved.
//

#import "SPAssembleOrderHeaderView.h"
#import "UIColor+SPAddition.h"
#import "Masonry.h"


@interface SPAssembleOrderHeaderView ()

@property (strong, nonatomic) UIImageView *iconImageView;


@property (strong, nonatomic) UILabel *showTitleLabel;


/**
 真实价格
 */
@property (strong, nonatomic) UILabel *priceLabel;


/**
 原价
 */
@property (strong, nonatomic) UILabel *originalPriceLabel;


/**
 成团人数
 */
@property (strong, nonatomic) UILabel *numberLabel;


@property (strong, nonatomic) UILabel *saveMoneyLabel;



@end

@implementation SPAssembleOrderHeaderView



-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        [self setup];
        
    }
    return self;
}

- (void)setup
{
    [self addSubview:self.iconImageView];
    [self.iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.mas_left).offset(10);
        make.top.mas_equalTo(self.mas_top).offset(12);
        make.size.mas_equalTo(CGSizeMake(97, 97));
    }];
    
    [self addSubview:self.showTitleLabel];
    [self.showTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.iconImageView.mas_right).offset(10);
        make.top.mas_equalTo(self.mas_top).offset(12);
        make.right.mas_equalTo(self.mas_right).offset(-11);
        make.height.mas_equalTo(30);
    }];
    
    [self addSubview:self.priceLabel];
    [self.priceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.showTitleLabel.mas_left);
        make.top.mas_equalTo(self.showTitleLabel.mas_bottom).offset(18);
        make.height.mas_equalTo(12);
    }];
    
    
    [self addSubview:self.originalPriceLabel];
    [self.originalPriceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.priceLabel.mas_right).offset(8);
        make.bottom.mas_equalTo(self.priceLabel.mas_bottom);
        make.height.mas_equalTo(8);
    }];
    
    [self addSubview:self.numberLabel];
    [self.numberLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.showTitleLabel.mas_left);
        make.bottom.mas_equalTo(self.mas_bottom).offset(-12);
        make.height.mas_equalTo(20);
        make.width.mas_equalTo(43);
    }];
    
    [self addSubview:self.saveMoneyLabel];
    [self.saveMoneyLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.numberLabel.mas_right).offset(5);
        make.bottom.mas_equalTo(self.mas_bottom).offset(-12);
        make.height.mas_equalTo(20);
        make.width.mas_equalTo(72);
    }];
    
    
    
    
}

-(UIImageView *)iconImageView
{
    if (_iconImageView == nil) {
        _iconImageView = [[UIImageView alloc] init];
        _iconImageView.backgroundColor = [UIColor redColor];
    }
    return _iconImageView;
}

-(UILabel *)showTitleLabel
{
    if (_showTitleLabel == nil) {
        _showTitleLabel = [[UILabel alloc] init];
        _showTitleLabel.textColor = [UIColor colorWithHexString:@"#666666"];
        _showTitleLabel.font = [UIFont systemFontOfSize:12];
        _showTitleLabel.numberOfLines = 0;
        _showTitleLabel.textAlignment = NSTextAlignmentLeft;
        _showTitleLabel.text = @"澳洲进口急救面霜嫩白保湿美白护肤日霜150";
    }
    return _showTitleLabel;
}

-(UILabel *)priceLabel
{
    if (_priceLabel == nil) {
        _priceLabel = [[UILabel alloc] init];
        _priceLabel.text = @"$175.00";
        _priceLabel.textColor = [UIColor colorWithRed:255/255.0 green:76/255.0 blue:101/255.0 alpha:1.0];
        _priceLabel.font = [UIFont systemFontOfSize:15];
    }
    return _priceLabel;
}


-(UILabel *)originalPriceLabel
{
    if (_originalPriceLabel == nil) {
        _originalPriceLabel = [[UILabel alloc] init];
        _originalPriceLabel.text = @"$79.00";
        _originalPriceLabel.font = [UIFont systemFontOfSize:10];
        _originalPriceLabel.textColor = [UIColor colorWithRed:184/255.0 green:184/255.0 blue:184/255.0 alpha:1.0];
    }
    return _originalPriceLabel;
}



-(UILabel *)numberLabel
{
    if (_numberLabel == nil) {
        _numberLabel = [[UILabel alloc] init];
        _numberLabel.text = @"2人团";
        _numberLabel.font = [UIFont systemFontOfSize:12];
        _numberLabel.textColor = [UIColor colorWithHexString:@"#FF4C65"];
        _numberLabel.backgroundColor = [UIColor colorWithRed:255/255.0 green:234/255.0 blue:237/255.0 alpha:1.0];
        _numberLabel.layer.cornerRadius = 1;
        _numberLabel.textAlignment = NSTextAlignmentCenter;
        
    }
    return _numberLabel;
}


-(UILabel *)saveMoneyLabel
{
    if (_saveMoneyLabel == nil) {
        _saveMoneyLabel = [[UILabel alloc] init];
        _saveMoneyLabel.textColor = [UIColor colorWithHexString:@"#FF4C65"];
        _saveMoneyLabel.font = [UIFont systemFontOfSize:12];
        _saveMoneyLabel.numberOfLines = 0;
        _saveMoneyLabel.textAlignment = NSTextAlignmentCenter;
        _saveMoneyLabel.text = @"拼团省4.00";
        _saveMoneyLabel.backgroundColor = [UIColor colorWithRed:255/255.0 green:234/255.0 blue:237/255.0 alpha:1.0];
        _saveMoneyLabel.layer.cornerRadius = 1;
    }
    return _saveMoneyLabel;
}



@end

//
//  SPAssembleSonTableViewCell.m
//  SPSliderDemo
//
//  Created by hong on 2019/9/27.
//  Copyright © 2019 hong. All rights reserved.
//

#import "SPAssembleSonTableViewCell.h"
#import "UIColor+SPAddition.h"
#import "Masonry.h"

@interface SPAssembleSonTableViewCell ()

@property (strong, nonatomic) UIView *backContentView;

@property (strong, nonatomic) UIImageView *goodsImageView;

@property (strong, nonatomic) UILabel *showTitleLabel;

@property (strong, nonatomic) UILabel *showDetailLabel;

@property (strong, nonatomic) UIImageView *iconImageView;


/**
 成团人数
 */
@property (strong, nonatomic) UILabel *numberLabel;


/**
 真是价格
 */
@property (strong, nonatomic) UILabel *priceLabel;


/**
 活动价格
 */
@property (strong, nonatomic) UILabel *originalPriceLabel;





@end

@implementation SPAssembleSonTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.backgroundColor = [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:1.0];
        
        [self setup];
    }
    return self;
}

- (void)setup
{
    [self.contentView addSubview:self.backContentView];
    [self.backContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.mas_equalTo(12);
        make.right.mas_equalTo(-12);
        make.bottom.mas_equalTo(0);
    }];
    
    [self.backContentView addSubview:self.goodsImageView];
    [self.goodsImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.backContentView.mas_left).offset(10);
        make.top.mas_equalTo(self.backContentView.mas_top).offset(10);
        make.size.mas_equalTo(CGSizeMake(128, 128));
    }];
    
    [self.backContentView addSubview:self.showTitleLabel];
    [self.showTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.goodsImageView.mas_right).offset(10);
        make.top.mas_equalTo(self.backContentView.mas_top).offset(10);
        make.right.mas_equalTo(self.backContentView.mas_right).offset(-22);
        make.height.mas_equalTo(36);
    }];
    
    [self.backContentView addSubview:self.showDetailLabel];
    [self.showDetailLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.showTitleLabel.mas_left);
        make.top.mas_equalTo(self.showTitleLabel.mas_bottom).offset(8);
        make.height.mas_equalTo(15);
    }];
    
    [self.backContentView addSubview:self.iconImageView];
    [self.iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.showTitleLabel.mas_left);
        make.top.mas_equalTo(self.showDetailLabel.mas_bottom).offset(8);
        make.size.mas_equalTo(CGSizeMake(14, 14));
    }];
    
    [self.backContentView addSubview:self.numberLabel];
    [self.numberLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.iconImageView.mas_top);
        make.left.mas_equalTo(self.iconImageView.mas_right).offset(2);
        make.height.mas_equalTo(14);
    }];
    
    [self.backContentView addSubview:self.priceLabel];
    [self.priceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.goodsImageView.mas_right).offset(12);
        make.top.mas_equalTo(self.iconImageView.mas_bottom).offset(8);
        make.height.mas_equalTo(11);
    }];
    
    [self.backContentView addSubview:self.originalPriceLabel];
    [self.originalPriceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.priceLabel.mas_right).offset(4);
        make.top.mas_equalTo(self.iconImageView.mas_bottom).offset(8);
        make.height.mas_equalTo(11);
    }];
    
    [self.backContentView addSubview:self.assembleButton];
    [self.assembleButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.backContentView.mas_right).offset(-10);
        make.bottom.mas_equalTo(self.backContentView.mas_bottom).offset(-10);
        make.size.mas_equalTo(CGSizeMake(55, 20));
    }];
    
}


-(UIView *)backContentView
{
    if (_backContentView == nil) {
        _backContentView = [[UIView alloc] init];
        _backContentView.backgroundColor = [UIColor whiteColor];
        _backContentView.layer.cornerRadius = 2;
    }
    return _backContentView;
}

-(UIImageView *)goodsImageView
{
    if (_goodsImageView == nil) {
        _goodsImageView = [[UIImageView alloc] init];
        _goodsImageView.backgroundColor = [UIColor redColor];
        _goodsImageView.layer.cornerRadius = 4;
    }
    return _goodsImageView;
}

-(UILabel *)showTitleLabel
{
    if (_showTitleLabel == nil) {
        _showTitleLabel = [[UILabel alloc] init];
        _showTitleLabel.textColor = [UIColor colorWithHexString:@"#666666"];
        _showTitleLabel.font = [UIFont systemFontOfSize:15];
        _showTitleLabel.numberOfLines = 2;
        _showTitleLabel.textAlignment = NSTextAlignmentLeft;
        _showTitleLabel.text = @"美国进口急救面霜嫩白保湿日霜150";
    }
    return _showTitleLabel;
}

-(UILabel *)showDetailLabel
{
    if (_showDetailLabel == nil) {
        _showDetailLabel = [[UILabel alloc] init];
        _showDetailLabel.textColor = [UIColor colorWithHexString:@"#FF4C65"];
        _showDetailLabel.font = [UIFont systemFontOfSize:13];
        _showDetailLabel.numberOfLines = 0;
        _showDetailLabel.textAlignment = NSTextAlignmentLeft;
        _showDetailLabel.text = @"修护细纹 改善暗黄";
    }
    return _showDetailLabel;
}

-(UIImageView *)iconImageView
{
    if (_iconImageView == nil) {
        _iconImageView = [[UIImageView alloc] init];
        _iconImageView.image = [UIImage imageNamed:@"iconImage"];
    }
    return _iconImageView;
}

-(UILabel *)numberLabel
{
    if (_numberLabel == nil) {
        _numberLabel = [[UILabel alloc] init];
        _numberLabel.text = @"2人团  已有5人进行拼团";
        _numberLabel.font = [UIFont systemFontOfSize:13];
        _numberLabel.textColor = [UIColor colorWithHexString:@"#FF4C65"];
        NSMutableAttributedString *attribute = [[NSMutableAttributedString alloc] initWithString:_numberLabel.text];
        
        NSString *firstrange = [[_numberLabel.text componentsSeparatedByString:@"  "] firstObject];
        NSRange range = NSMakeRange(0, firstrange.length);
        [attribute addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithHexString:@"#FF4C65"] range:range];
        [attribute addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithHexString:@"#B8B8B8"] range:NSMakeRange(firstrange.length, _numberLabel.text.length-3)];
        _numberLabel.attributedText = attribute;

        
    }
    return _numberLabel;
}

-(UILabel *)priceLabel
{
    if (_priceLabel == nil) {
        _priceLabel = [[UILabel alloc] init];
        _priceLabel.text = @"$175.00";
        _priceLabel.textColor = [UIColor colorWithRed:255/255.0 green:76/255.0 blue:101/255.0 alpha:1.0];
        _priceLabel.font = [UIFont systemFontOfSize:13];
    }
    return _priceLabel;
}

-(UILabel *)originalPriceLabel
{
    if (_originalPriceLabel == nil) {
        _originalPriceLabel = [[UILabel alloc] init];
        _originalPriceLabel.text = @"$79.00";
        _originalPriceLabel.textColor = [UIColor colorWithRed:184/255.0 green:184/255.0 blue:184/255.0 alpha:1.0];
        _originalPriceLabel.font = [UIFont systemFontOfSize:10];
        NSMutableAttributedString *attribute = [[NSMutableAttributedString alloc] initWithString:_originalPriceLabel.text];
        [attribute addAttribute:NSStrikethroughStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:NSMakeRange(0, _originalPriceLabel.text.length)];
        _originalPriceLabel.attributedText = attribute;

    }
    return _originalPriceLabel;
}

-(UIButton *)assembleButton
{
    if (_assembleButton == nil) {
        _assembleButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_assembleButton setTitle:@"拼团" forState:UIControlStateNormal];
        [_assembleButton setBackgroundColor:[UIColor colorWithRed:255/255.0 green:76/255.0 blue:101/255.0 alpha:1.0]];
        _assembleButton.layer.cornerRadius = 10.0f;
        [_assembleButton setTitleColor:[UIColor colorWithHexString:@"#FFFFFF"] forState:UIControlStateNormal];
        _assembleButton.titleLabel.font = [UIFont systemFontOfSize:12];
        
    }
    return _assembleButton;
}

@end

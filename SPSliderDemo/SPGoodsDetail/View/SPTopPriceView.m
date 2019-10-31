//
//  SPTopPriceView.m
//  SPSliderDemo
//
//  Created by haitaoiOS on 2019/10/22.
//  Copyright © 2019 hong. All rights reserved.
//

#import "SPTopPriceView.h"
#import "UIColor+SPAddition.h"
#import "Masonry.h"


@interface SPTopPriceView ()


//价格
@property (strong, nonatomic) UILabel *priceLabel;


//原价
@property (strong, nonatomic) UILabel *orignPriceLabel;



@property (strong, nonatomic) UILabel *assemBleLabel;


@property (strong, nonatomic) UILabel *peopleLabel;



@end

@implementation SPTopPriceView


-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        [self setup];
        
        
    }
    return self;
}

- (void)setup
{
    [self addSubview:self.priceLabel];
    [self.priceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.mas_equalTo(15);
        make.height.mas_equalTo(18.5);
    }];
    
    [self addSubview:self.orignPriceLabel];
    [self.orignPriceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.priceLabel.mas_right).offset(10);
        make.top.mas_equalTo(self.mas_top).offset(10);
        make.height.mas_equalTo(8.5);
    }];
    
    [self addSubview:self.assemBleLabel];
    [self.assemBleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.priceLabel.mas_right).offset(10);
        make.top.mas_equalTo(self.orignPriceLabel.mas_bottom).offset(5);
        make.height.mas_equalTo(15);
        make.width.mas_equalTo(41);
    }];
    
    [self addSubview:self.peopleLabel];
    [self.peopleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.assemBleLabel.mas_right).offset(10);
        make.centerY.mas_equalTo(self.assemBleLabel.mas_centerY);
    }];
    
    
    
    CAGradientLayer *gl = [CAGradientLayer layer];
    gl.frame = CGRectMake(0,0,self.frame.size.width,self.frame.size.height);
    gl.startPoint = CGPointMake(0, 0);
    gl.endPoint = CGPointMake(1, 1);
    gl.colors = @[(__bridge id)[UIColor colorWithRed:254/255.0 green:108/255.0 blue:128/255.0 alpha:1.0].CGColor,(__bridge id)[UIColor colorWithRed:252/255.0 green:59/255.0 blue:86/255.0 alpha:1.0].CGColor];
    gl.locations = @[@(0.0),@(1.0)];
    [self.layer insertSublayer:gl atIndex:0];
    
}

-(UILabel *)priceLabel
{
    if (_priceLabel == nil) {
        _priceLabel = [[UILabel alloc] init];
        _priceLabel.textColor = [UIColor colorWithHexString:@"#FFFFFF"];
        _priceLabel.font = [UIFont systemFontOfSize:24];
        _priceLabel.text = @"￥69.00";
    }
    return _priceLabel;
}

-(UILabel *)orignPriceLabel
{
    if (_orignPriceLabel == nil) {
        _orignPriceLabel = [[UILabel alloc] init];
        _orignPriceLabel.textColor = [UIColor colorWithHexString:@"#FFFFFF"];
        _orignPriceLabel.font = [UIFont systemFontOfSize:11];
        _orignPriceLabel.text = @"￥79.00";
        
        NSMutableAttributedString *attribute = [[NSMutableAttributedString alloc] initWithString:_orignPriceLabel.text];
        [attribute addAttribute:NSStrikethroughStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:NSMakeRange(0, _orignPriceLabel.text.length)];
        _orignPriceLabel.attributedText = attribute;
    }
    return _orignPriceLabel;
}

-(UILabel *)assemBleLabel
{
    if (_assemBleLabel == nil) {
        _assemBleLabel = [[UILabel alloc] init];
        _assemBleLabel.textColor = [UIColor colorWithHexString:@"#FE6076"];
        _assemBleLabel.font = [UIFont systemFontOfSize:10];
        _assemBleLabel.text = @"团购中";
        _assemBleLabel.backgroundColor = [UIColor colorWithHexString:@"#FFFFFF"];
        _assemBleLabel.textAlignment = NSTextAlignmentCenter;
        _assemBleLabel.layer.cornerRadius = 4.0f;
        _assemBleLabel.layer.masksToBounds = YES;
    }
    return _assemBleLabel;
}

-(UILabel *)peopleLabel
{
    if (_peopleLabel == nil) {
        _peopleLabel = [[UILabel alloc] init];
        _peopleLabel.textColor = [UIColor colorWithHexString:@"#FFFFFF"];
        _peopleLabel.font = [UIFont systemFontOfSize:10];
        _peopleLabel.text = @"25人已参团";
    }
    return _peopleLabel;
}



@end

//
//  SPAddressView.m
//  SPSliderDemo
//
//  Created by haitaoiOS on 2019/10/15.
//  Copyright © 2019 hong. All rights reserved.
//

#import "SPAddressView.h"
#import "Masonry.h"
#import "UIColor+SPAddition.h"

@interface SPAddressView ()

@property (strong, nonatomic) UIImageView *locationImageView;

@property (strong, nonatomic) UILabel *nameLabel;

@property (strong, nonatomic) UILabel *phoneNumberLabel;

@property (strong, nonatomic) UILabel *addressLabel;

@property (strong, nonatomic) UIImageView *lineImageView;



@end

@implementation SPAddressView

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        [self setup];
        
        
    }
    return self;
}

- (void)setup
{
    [self addSubview:self.locationImageView];
    [self.locationImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self.mas_centerY);
        make.left.mas_equalTo(self.mas_left).offset(12);
        make.size.mas_equalTo(CGSizeMake(14, 17));
    }];
    
    [self addSubview:self.nameLabel];
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.locationImageView.mas_right).offset(8);
        make.top.mas_equalTo(self.mas_top).offset(16);
        make.height.mas_equalTo(15);
    }];
    
    [self addSubview:self.phoneNumberLabel];
    [self.phoneNumberLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.nameLabel.mas_right).offset(4);
        make.top.mas_equalTo(self.nameLabel.mas_top);
        make.height.mas_equalTo(self.nameLabel.mas_height);
    }];

    [self addSubview:self.addressLabel];
    [self.addressLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.nameLabel.mas_left);
        make.top.mas_equalTo(self.nameLabel.mas_bottom).offset(10);
    }];
    
    [self addSubview:self.lineImageView];
    [self.lineImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.bottom.mas_equalTo(-10);
        make.height.mas_equalTo(5.5);
    }];
    
    
}

-(UIImageView *)locationImageView
{
    if (_locationImageView == nil) {
        _locationImageView = [[UIImageView alloc] init];
        _locationImageView.image = [UIImage imageNamed:@""];
    }
    return _locationImageView;
}

-(UILabel *)nameLabel
{
    if (_nameLabel == nil) {
        _nameLabel = [[UILabel alloc] init];
        _nameLabel.font = [UIFont systemFontOfSize:15];
        _nameLabel.textColor = [UIColor colorWithHexString:@"#323232"];
        _nameLabel.text = @"洪福清";
        _nameLabel.textAlignment = NSTextAlignmentLeft;
    }
    return _nameLabel;
}

-(UILabel *)phoneNumberLabel
{
    if (_phoneNumberLabel == nil) {
        _phoneNumberLabel = [[UILabel alloc] init];
        _phoneNumberLabel.font = [UIFont systemFontOfSize:15];
        _phoneNumberLabel.textColor = [UIColor colorWithHexString:@"#323232"];
        _phoneNumberLabel.text = @"18949943871";
        _phoneNumberLabel.textAlignment = NSTextAlignmentLeft;
    }
    return _phoneNumberLabel;
}

-(UILabel *)addressLabel
{
    if (_addressLabel == nil) {
        _addressLabel = [[UILabel alloc] init];
        _addressLabel.textColor = [UIColor colorWithHexString:@"#666666"];
        _addressLabel.font = [UIFont systemFontOfSize:15];
        _addressLabel.text = @"上海市浦东新区广兰路地跌";
        _addressLabel.numberOfLines = 0.0f;
    }
    return _addressLabel;
}

-(UIImageView *)lineImageView
{
    if (_lineImageView == nil) {
        _lineImageView = [[UIImageView alloc] init];
        [_lineImageView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"ic_address_border"]]];
    }
    return _lineImageView;
}



@end

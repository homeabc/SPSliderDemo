//
//  SPIntroduceView.m
//  SPSliderDemo
//
//  Created by haitaoiOS on 2019/10/22.
//  Copyright © 2019 hong. All rights reserved.
//

#import "SPIntroduceView.h"
#import "UIColor+SPAddition.h"
#import "Masonry.h"

@interface SPIntroduceView ()

@property (strong, nonatomic) UILabel *introduceLabel;

@property (strong, nonatomic) UIButton *rulesButton;


@end

@implementation SPIntroduceView


-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        ;
    }
    return self;
}

-(UILabel *)introduceLabel
{
    if (_introduceLabel == nil) {
        _introduceLabel = [[UILabel alloc] init];
        _introduceLabel.text = @"拼团玩法";
        _introduceLabel.font = [UIFont systemFontOfSize:15];
        _introduceLabel.textColor = [UIColor colorWithHexString:@""];
    }
    return _introduceLabel;
}

@end

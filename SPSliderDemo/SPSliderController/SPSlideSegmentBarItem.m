//
//  SPSlideSegmentBarItem.m
//  SuperPet
//
//  Created by JackZ on 16/3/19.
//  Copyright © 2016年 Supet. All rights reserved.
//

#import "SPSlideSegmentBarItem.h"

#import "UIView+SPAddition.h"
#import "UIColor+SPAddition.h"
#import "NSString+SPGetSize.h"


@interface SPSlideSegmentBarItem()


@end

@implementation SPSlideSegmentBarItem

#pragma mark - life cycle
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup
{
    [self.contentView addSubview:self.titleLabel];
}

- (void)setSelected:(BOOL)selected
{
    [super setSelected:selected];
    if (selected) {
        self.titleLabel.font = [UIFont systemFontOfSize:14];
        _titleLabel.textColor = [UIColor colorWithRed:255/255.0 green:76/255.0 blue:101/255.0 alpha:1.0];
    } else {
        self.titleLabel.font = [UIFont systemFontOfSize:14];
        _titleLabel.textColor = [UIColor blackColor];
    }
}

#pragma mark - getter and setter
- (UILabel *)titleLabel
{
    if (_titleLabel == nil) {
        _titleLabel = [[UILabel alloc] initWithFrame:self.contentView.bounds];
        _titleLabel.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.font = [UIFont systemFontOfSize:14];
        _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.backgroundColor = [UIColor clearColor];
    }
    return _titleLabel;
}

@end

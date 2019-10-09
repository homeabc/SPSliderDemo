//
//  SPAssembleOrderHeaderView.m
//  SPSliderDemo
//
//  Created by hong on 2019/10/8.
//  Copyright © 2019 hong. All rights reserved.
//

#import "SPAssembleOrderHeaderView.h"

@interface SPAssembleOrderHeaderView ()

@property (strong,nonatomic) UIImageView *iconImageView;


@end

@implementation SPAssembleOrderHeaderView

+(instancetype)initXibWithFrame:(CGRect)frame
{
    SPAssembleOrderHeaderView *view = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil].lastObject;
    view.frame = frame;
    [view awakeFromNib];
    return view;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        
    }
    return self;
}


- (void)awakeFromNib {
    [super awakeFromNib];
    
    NSLog(@"awakeFromNib");
    
    
    
}

@end

//
//  UIButton+SPVertical.m
//  SPSliderDemo
//
//  Created by haitaoiOS on 2019/10/22.
//  Copyright © 2019 hong. All rights reserved.
//

#import "UIButton+SPVertical.h"

@implementation UIButton (SPVertical)

- (void)changeTitleAndImageLoaction:(CGFloat)spacing
{
    //注意在调用这个方法的时候。要保持宽度大于文字宽度(可以在此设置文字宽度)
    
    return;
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    
    
    CGSize imageSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;
    [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -imageSize.width-titleSize.width, 0, 0)];

    [self setImageEdgeInsets:UIEdgeInsetsMake(0, titleSize.width + spacing, 0, -titleSize.width)];

}


@end

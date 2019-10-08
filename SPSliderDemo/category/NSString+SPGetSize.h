//
//  NSString+SPGetSize.h
//  SuperPet
//
//  Created by JackZ on 15/3/20.
//  Copyright © 2015年 Supet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface NSString (SPGetSize)

- (CGSize)spSizeWithFont:(UIFont *)font;

- (CGSize)spSizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size;

- (CGSize)spSizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size lineBreakMode:(NSLineBreakMode)lineBreakMode;

- (CGSize)spSizeWithFont:(UIFont *)font maxSize:(CGSize)size lineBreakMode:(NSLineBreakMode)mode;


@end

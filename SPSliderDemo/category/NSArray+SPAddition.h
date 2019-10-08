//
//  NSArray+SPAddition.h
//  SuperPet
//
//  Created by JackZ on 16/3/15.
//  Copyright © 2016年 Supet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (SPAddition)

/**
 * 检查是否越界和NSNull如果是返回nil
 */
- (id)objectAtIndexCheck:(NSUInteger)index;

@end

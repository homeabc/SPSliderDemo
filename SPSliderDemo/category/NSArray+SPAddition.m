//
//  NSArray+SPAddition.m
//  SuperPet
//
//  Created by JackZ on 16/3/15.
//  Copyright © 2016年 Supet. All rights reserved.
//

#import "NSArray+SPAddition.h"

@implementation NSArray (SPAddition)

- (id)objectAtIndexCheck:(NSUInteger)index
{
    if (index >= [self count]) {
        return nil;
    }
    
    id value = [self objectAtIndex:index];
    if (value == [NSNull null]) {
        return nil;
    }
    return value;
}

@end

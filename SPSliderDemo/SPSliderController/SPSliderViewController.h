//
//  SPSliderViewController.h
//  SuperPet
//
//  Created by JackZ on 16/3/19.
//  Copyright © 2016年 Supet. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    SPSegmentBarTypeStaticWidth,
    SPSegmentBarTypeDynamicWidth,
} SPSegmentBarType;


@class SPSliderViewController;

@protocol SPSlideViewControllerDelegate <NSObject>
@optional
- (void)slideViewController:(SPSliderViewController *)slideViewController didSelectViewIndex:(NSInteger)selectViewIndex;

- (BOOL)slideViewController:(SPSliderViewController *)slideViewController shouldSelectViewIndex:(NSInteger)selectViewIndex;

@end

@interface SPSliderViewController : UIViewController

@property (nonatomic, copy) NSArray *viewControllers;

@property (nonatomic, strong, readonly) UICollectionView *segmentBar;

@property (nonatomic, strong, readonly) UIScrollView *slideView;

@property (nonatomic, assign) UIEdgeInsets indicatorInsets;

@property (nonatomic, weak, readonly) UIViewController *selectedViewController;

@property (nonatomic, assign, readonly) NSInteger presentViewIndex;

@property (nonatomic, assign) id <SPSlideViewControllerDelegate> delegate;

@property (nonatomic, assign) SPSegmentBarType segmentBarType;

@property (nonatomic, assign) CGFloat segmentBarHeight;

@property (nonatomic, assign) CGFloat segmentBarWidth;

@property (nonatomic, assign) BOOL hideSegmentBar;


/**
 是否隐藏lineview 底下线
 */
@property (nonatomic, assign) BOOL hideIndicatorBgView;


- (void)scrollToViewIndex:(NSInteger)index animated:(BOOL)animated;

- (instancetype)initWithViewControllers:(NSArray *)viewControllers;

@end

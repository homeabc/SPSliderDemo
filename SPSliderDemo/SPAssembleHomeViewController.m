//
//  SPTestSliderViewController.m
//  SuperPet
//
//  Created by JackZ on 16/3/20.
//  Copyright © 2016年 Supet. All rights reserved.
//

#import "SPAssembleHomeViewController.h"
#import "SPSliderViewController.h"
#import "SPAssembleSonViewController.h"

#import "UIView+SPAddition.h"
#import "UIColor+SPAddition.h"
#import "NSString+SPGetSize.h"
#import "Masonry.h"
#import "NSArray+SPAddition.h"

#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;


#define SP_SCREEN_HEIGHT ([[UIScreen mainScreen]bounds].size.height)


#define SP_SCREEN_WIDTH ([[UIScreen mainScreen]bounds].size.width)





@interface SPAssembleHomeViewController ()<SPSlideViewControllerDelegate>

/** UI */
@property (nonatomic, strong) UIView *containerView;


@property (nonatomic, strong) SPSliderViewController *slideViewController;

/** DADTA */
@property (nonatomic, strong) NSMutableArray *viewControllerArray;


@end

@implementation SPAssembleHomeViewController

#pragma mark - life cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor cyanColor];
    
    [self initUI];
    [self addViewControllerToSliderViewControllr];
    
    
}

- (void)initUI
{
    WS(ws);
    [self.view addSubview:self.containerView];
    [self.containerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(84);
        make.left.right.bottom.equalTo(ws.view);
    }];
    

}
- (void)addViewControllerToSliderViewControllr
{
    [self.viewControllerArray removeAllObjects];
    NSArray *titleArray = @[@"首页",@"工具",@"美妆",@"保健",@"生活用品"];
    for (NSInteger i = 0; i<titleArray.count; i++) {
        
        NSMutableDictionary *tempDic = [[NSMutableDictionary alloc] init];
        [tempDic setObject:[NSString stringWithFormat:@"%ld",i] forKey:@"type"];
        SPAssembleSonViewController *home = [[SPAssembleSonViewController alloc] initWithDictionary:tempDic];
        home.title = titleArray[i];
        [self.viewControllerArray addObject:home];
    }
    self.slideViewController.viewControllers = self.viewControllerArray;

}


#pragma mark - SPSlideViewControllerDelegate method
- (void)slideViewController:(SPSliderViewController *)slideViewController didSelectViewIndex:(NSInteger)selectViewIndex
{
    NSLog(@"selectViewIndex::%ld",selectViewIndex);
}

#pragma mark - getter and setter
- (UIView *)containerView
{
    if (_containerView == nil) {
        
        self.slideViewController = [[SPSliderViewController alloc] initWithViewControllers:@[]];
        self.slideViewController.indicatorInsets = UIEdgeInsetsMake(0, 10, 0, 10);
        self.slideViewController.segmentBarType = SPSegmentBarTypeStaticWidth;
        self.slideViewController.segmentBarHeight = 44.0f;
        self.slideViewController.delegate = self;
        self.slideViewController.hideSegmentBar = NO;
        self.slideViewController.hideIndicatorBgView = YES;
        [self addChildViewController:self.slideViewController];
        _containerView = self.slideViewController.view;
    }
    return _containerView;
}

- (NSMutableArray*)viewControllerArray
{
    if (_viewControllerArray == nil) {
        _viewControllerArray = [[NSMutableArray alloc] init];
    }
    
    return _viewControllerArray;
}

- (void)dealloc
{
    NSLog(@"dealloc");
}

@end

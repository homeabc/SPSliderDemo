//
//  SPAssembleOrderViewController.m
//  SPSliderDemo
//
//  Created by hong on 2019/9/29.
//  Copyright © 2019 hong. All rights reserved.
//

#import "SPAssembleOrderViewController.h"
#import "SPSliderViewController.h"
#import "SPAssembleOrderSonViewController.h"

#import "UIColor+SPAddition.h"
#import "NSString+SPGetSize.h"
#import "Masonry.h"
#import "NSArray+SPAddition.h"

#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;







@interface SPAssembleOrderViewController ()<SPSlideViewControllerDelegate>

/** UI */
@property (nonatomic, strong) UIView *containerView;


@property (nonatomic, strong) SPSliderViewController *slideViewController;

/** DADTA */
@property (nonatomic, strong) NSMutableArray *viewControllerArray;




@end

@implementation SPAssembleOrderViewController

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
    NSArray *titleArray = @[@"全部",@"待付款",@"拼团中",@"待发货",@"待收货",@"售后"];
    for (NSInteger i = 0; i<titleArray.count; i++) {
        
        NSMutableDictionary *tempDic = [[NSMutableDictionary alloc] init];
        [tempDic setObject:[NSString stringWithFormat:@"%ld",i] forKey:@"type"];
        SPAssembleOrderSonViewController *home = [[SPAssembleOrderSonViewController alloc] initWithDictionary:tempDic];
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

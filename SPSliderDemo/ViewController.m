//
//  ViewController.m
//  SPSliderDemo
//
//  Created by hong on 2019/9/26.
//  Copyright © 2019 hong. All rights reserved.
//

#import "ViewController.h"
#import "SPAssembleOrderViewController.h"
#import "SPAssembleOrderDetailViewController.h"
#import "SPOrderDetailViewController.h"
#import "SPGoodsDetailViewController.h"
#import "SPWkWebViewController.h"



@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
  
    
}




-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    SPWkWebViewController *vc = [[SPWkWebViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}

@end

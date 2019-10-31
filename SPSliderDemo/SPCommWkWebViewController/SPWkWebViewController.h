//
//  SPWkWebViewController.h
//  SPSliderDemo
//
//  Created by haitaoiOS on 2019/10/29.
//  Copyright © 2019 hong. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SPWkWebViewController : UIViewController


@property (copy, nonatomic) NSString *titleString;

-(instancetype)initWithUrlString:(NSString *)urlString;


@end

NS_ASSUME_NONNULL_END

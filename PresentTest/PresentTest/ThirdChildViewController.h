//
//  ThirdChildViewController.h
//  PresentTest
//
//  Created by zry on 2017/4/27.
//  Copyright © 2017年 seed.com. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ThirdBlock)(void);
@interface ThirdChildViewController : UIViewController
@property (nonatomic, copy)ThirdBlock thirdBlock;

@end

//
//  SecondChildViewController.h
//  PresentTest
//
//  Created by zry on 2017/4/27.
//  Copyright © 2017年 seed.com. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^SecondBlock)(void);
@interface SecondChildViewController : UIViewController
@property (nonatomic, copy) SecondBlock secondBlock;
@end

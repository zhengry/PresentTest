//
//  FirstChildViewController.h
//  PresentTest
//
//  Created by zry on 2017/4/27.
//  Copyright © 2017年 seed.com. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^FirstBlock)(void);
@interface FirstChildViewController : UIViewController
@property (nonatomic, copy) FirstBlock firstBlock;
@end

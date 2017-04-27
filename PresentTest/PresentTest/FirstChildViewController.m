//
//  FirstChildViewController.m
//  PresentTest
//
//  Created by zry on 2017/4/27.
//  Copyright © 2017年 seed.com. All rights reserved.
//

#import "FirstChildViewController.h"

@interface FirstChildViewController ()

@end

@implementation FirstChildViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"重置前firstChildController--%@",self.view);
    
    /* 打开下面的注释，看重置后的frame展示 */
//    UIWindow *window = [UIApplication sharedApplication].keyWindow;
//    self.view.frame = window.frame;
//    [self.view setNeedsLayout];
//    NSLog(@"重置后firstChildController--%@",self.view);
   
    /* childViewController之间切换，切换到第二个子Controller */
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(toSecond)];
    [self.view addGestureRecognizer:tap];
}

-(void)toSecond
{
    if (self.firstBlock) {
        self.firstBlock();
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

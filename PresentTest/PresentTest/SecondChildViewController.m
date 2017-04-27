//
//  SecondChildViewController.m
//  PresentTest
//
//  Created by zry on 2017/4/27.
//  Copyright © 2017年 seed.com. All rights reserved.
//

#import "SecondChildViewController.h"

@interface SecondChildViewController ()

@end

@implementation SecondChildViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"重置前secondChildController--%@",self.view);

    /*注释掉下面的重置代码，可以看到作为childViewController时，Controller的view是按照xib尺寸创建的*/
//    UIWindow *window = [UIApplication sharedApplication].keyWindow;
//    self.view.frame = window.frame;
//    [self.view setNeedsLayout];
//    NSLog(@"重置后secondChildController--%@",self.view);
    
    
    /* childViewController之间切换，切换到第三个子Controller */
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(toThird)];
    [self.view addGestureRecognizer:tap];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"重置前secondChildController--%@",self.view);
}

-(void)toThird
{
    if (self.secondBlock) {
        self.secondBlock();
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

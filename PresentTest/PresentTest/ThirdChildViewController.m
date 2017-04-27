//
//  ThirdChildViewController.m
//  PresentTest
//
//  Created by zry on 2017/4/27.
//  Copyright © 2017年 seed.com. All rights reserved.
//

#import "ThirdChildViewController.h"

@interface ThirdChildViewController ()

@end

@implementation ThirdChildViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    /* 为了测试frame是否正确，给label留了20px边距，如果不能正确展示，边距将>20px或<20px */
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, self.view.frame.size.width - 40, self.view.frame.size.height - 40)];
    label.backgroundColor = [UIColor greenColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:20];
    label.text = @"thirdChildController";
    [self.view addSubview:label];
    
    NSLog(@"thirdChildController--%@",self.view);
    
    /* 纯代码创建的Controller不需要重置frame，就能正确展示 */
    
    /* childViewController之间切换，切换到第一个子Controller */
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(toFirst)];
    [self.view addGestureRecognizer:tap];
    
    
}
-(void)toFirst
{
    if (self.thirdBlock) {
        self.thirdBlock();
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

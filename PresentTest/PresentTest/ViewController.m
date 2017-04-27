//
//  ViewController.m
//  PresentTest
//
//  Created by zry on 2017/4/27.
//  Copyright © 2017年 seed.com. All rights reserved.
//

#import "ViewController.h"
#import "ContainerViewController.h"
#import "FirstChildViewController.h"
#import "SecondChildViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 200, 48);
    button.backgroundColor = [UIColor blueColor];
    [button setTitle:@"presentViewController" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(presentContainerController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
}

-(void)presentContainerController
{
    ContainerViewController *container = [[ContainerViewController alloc] init];
    [self presentViewController:container animated:YES completion:nil];

    /* 下面的代码用来测试：present到不包含childViewController的Controller的呈现，Controller用xib创建*/
//    FirstChildViewController *controller = [[FirstChildViewController alloc] initWithNibName:@"FirstChildViewController" bundle:nil];
//    [self presentViewController:controller animated:YES completion:nil];
    
//    SecondChildViewController *controller = [[SecondChildViewController alloc] initWithNibName:@"SecondChildViewController" bundle:nil];
//    [self presentViewController:controller animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

//
//  ContainerViewController.m
//  PresentTest
//
//  Created by zry on 2017/4/27.
//  Copyright © 2017年 seed.com. All rights reserved.
//

#import "ContainerViewController.h"
#import "ViewController.h"
#import "FirstChildViewController.h"
#import "SecondChildViewController.h"
#import "ThirdChildViewController.h"

typedef enum : NSUInteger {
    CHILD_INDEX_FIRST,
    CHILD_INDEX_SECOND,
    CHILD_INDEX_THIRD,
} ChildIndex;

@interface ContainerViewController ()

@property (nonatomic, assign) ChildIndex childIndex;//记录当前子controller的index

@end

@implementation ContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.childIndex = CHILD_INDEX_FIRST;
    
    FirstChildViewController *first = [[FirstChildViewController alloc] initWithNibName:@"FirstChildViewController" bundle:nil];
    SecondChildViewController *second = [[SecondChildViewController alloc] initWithNibName:@"SecondChildViewController" bundle:nil];
    ThirdChildViewController *third = [[ThirdChildViewController alloc] init];
    [self addChildViewController:first];
    [self addChildViewController:second];
    [self addChildViewController:third];
    
    /* 子Controller之间进行切换的block */
    first.firstBlock = ^{
        [self  transitionToNext:CHILD_INDEX_SECOND];
    };
    second.secondBlock = ^{
        [self transitionToNext:CHILD_INDEX_THIRD];
    };
    third.thirdBlock = ^{
        [self transitionToNext:CHILD_INDEX_FIRST];
    };
    
    [self.view addSubview:self.childViewControllers[self.childIndex].view];

    
}

-(void)transitionToNext:(ChildIndex)index
{
    UIViewController *controller = self.childViewControllers[index];
    
    [self transitionFromViewController:self.childViewControllers[self.childIndex] toViewController:controller duration:0.5f options:UIViewAnimationOptionCurveLinear animations:^{
    } completion:^(BOOL finished) {
        self.childIndex = index;
    }];
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

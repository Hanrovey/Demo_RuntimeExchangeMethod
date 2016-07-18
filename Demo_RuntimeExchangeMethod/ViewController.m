//
//  ViewController.m
//  Demo_RuntimeExchangeMethod
//
//  Created by ihefe_Hanrovey on 16/7/18.
//  Copyright © 2016年 Hanrovey. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    
    UIButton *btn = [[UIButton alloc] init];
    btn.backgroundColor = [UIColor blueColor];
    [btn setTitle:@"跳转" forState:UIControlStateNormal];
    btn.frame = CGRectMake(20, 20, 50, 50);
    btn.center = self.view.center;
    [btn addTarget:self action:@selector(jump) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

}

- (void)jump
{
    FirstViewController *firstVC = [FirstViewController new];
    [self presentViewController:firstVC animated:NO completion:nil];
}

@end

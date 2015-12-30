//
//  LNRootViewController.m
//  茶百科
//
//  Created by 刘宁 on 15/10/28.
//  Copyright (c) 2015年 liuning. All rights reserved.
//

#import "LNRootViewController.h"

@interface LNRootViewController ()

@end

@implementation LNRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    CGFloat red = arc4random()%255/255.0;
    CGFloat green = arc4random()%255/255.0;
    CGFloat blue = arc4random()%255/255.0;
    self.view.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1];
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

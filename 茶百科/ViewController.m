//
//  ViewController.m
//  茶百科
//
//  Created by 刘宁 on 15/10/28.
//  Copyright (c) 2015年 liuning. All rights reserved.
//

#define Screen_Size  [UIScreen mainScreen].bounds.size

#import "ViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourViewController.h"
#import "FiveViewController.h"
#import "TitleView.h"


@interface ViewController ()<UIScrollViewDelegate>
{
    UIScrollView * _scrollView;
    TitleView * _titleView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self cgreateUI];
}

-(void)cgreateUI
{
   
    _scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 64,self.view.frame.size.width,self.view.frame.size.height-64)];
    _scrollView.delegate = self;
    _scrollView.contentSize = CGSizeMake(self.view.frame.size.width*5, self.view.frame.size.height-44);
    _scrollView.pagingEnabled = YES;
    _scrollView.directionalLockEnabled = YES;
    _scrollView.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:_scrollView];
    [self addSubviewsToScrollView:_scrollView];
    
    
    __weak UIScrollView * scrollview = _scrollView;
    _titleView = [[TitleView alloc]initWithFrame:CGRectMake(0, 20, Screen_Size.width, 44)];
    NSArray * array = @[@"头条",@"资讯",@"经营",@"百科",@"数据"];
    _titleView.titles = array;
    _titleView.buttonSelectAtIndex = ^(NSInteger index){
        scrollview.contentOffset = CGPointMake(Screen_Size.width*index, 0);
    };
    [self.view addSubview:_titleView];
}


-(void)addSubviewsToScrollView:(UIScrollView*)scrollView
{
    FirstViewController * first = [[FirstViewController alloc]init];
    SecondViewController * second = [[SecondViewController alloc]init];
    FourViewController * fouth = [[FourViewController alloc]init];
    ThirdViewController * third = [[ThirdViewController alloc]init];
    FiveViewController * fifth = [[FiveViewController alloc]init];
    NSArray * array = @[first,second,third,fouth,fifth];
    /**
     *
     */
 
    for (int i = 0; i < 5; i++) {
        UIViewController * vc = array[i];
         vc.view.frame = CGRectMake(i*Screen_Size.width, 0, Screen_Size.width, Screen_Size.height-64);
        
        [_scrollView addSubview:vc.view];
    }
   

}



#pragma mark - UIScrollViewDelegate
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSInteger index = scrollView.contentOffset.x/Screen_Size.width;
    _titleView.currentPage = index;
}


@end

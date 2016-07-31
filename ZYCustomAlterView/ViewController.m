//
//  ViewController.m
//  ZYCustomAlterView
//
//  Created by mac on 16/7/31.
//  Copyright © 2016年 mac. All rights reserved.
//
/*
 -(void)test{
 
 1.#import "ZYAlterView.h"
 // 2.使用方法
 ZYAlterView *alterView = [ZYAlterView alterViewWithTitle:@"自定义弹框学习" content:@"虚心学习，真爱生命！" cancel:@"取消" sure:@"确定" cancel_Block_Clcik:^{
 
 //取消按钮点击事件
 NSLog(@"取消");
 
 } sure_Block_Click:^{
 
 //确定按钮点击事件
 NSLog(@"确定");
 }];
 
 [self.view addSubview:alterView];
 
 }
 */

#import "ViewController.h"
#import "ZYAlterView.h"
@interface ViewController ()
@property(strong,nonatomic)UILabel *lab;
@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
   
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    // 使用方法
    ZYAlterView *alterView = [ZYAlterView alterViewWithTitle:@"自定义弹框学习" content:@"虚心学习，真爱生命！" cancel:@"取消" sure:@"确定" cancel_Block_Clcik:^{
        
        _lab = [[UILabel alloc]initWithFrame:(CGRect){0,0,100,50}];
        _lab.textColor = [UIColor redColor];
        _lab.font = [UIFont systemFontOfSize:17.0f];
        _lab.text = @"您点击取消喽！！！";
        [self.view addSubview:_lab];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [UIView animateWithDuration:0.5 animations:^{
                [_lab removeFromSuperview];
            }];
        });
      
       
      } sure_Block_Click:^{
          _lab = [[UILabel alloc]initWithFrame:(CGRect){100,0,100,50}];
          _lab.textColor = [UIColor redColor];
          _lab.font = [UIFont systemFontOfSize:17.0f];
          _lab.text = @"您点击确定喽！！！";
          [self.view addSubview:_lab];
          dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
              [UIView animateWithDuration:0.5 animations:^{
                  [_lab removeFromSuperview];
              }];
          });


    }];
    
    [self.view addSubview:alterView];



}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

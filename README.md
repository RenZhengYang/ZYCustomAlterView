# ZYCustomAlterView
Custom packaging box（自定义封装弹框）
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

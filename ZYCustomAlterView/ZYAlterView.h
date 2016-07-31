//
//  ZYAlterView.h
//  ZYCustomAlterView
//
//  Created by mac on 16/7/31.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

/**取消按钮点击事件*/
typedef void (^cancelBlock)();
/**确定按钮点击事件*/
typedef void (^sureBlock)();


@interface ZYAlterView : UIView
/**失败回调*/
@property(copy,nonatomic) cancelBlock cancel_block;
/**成功回调*/
@property(copy,nonatomic) sureBlock sure_block;


/**
 *
 *  @param title               标题
 *  @param content         内容
 *  @param cancel          取消按钮内容
 *  @param sure              确定按钮内容
 *  @param cancelBlock 取消按钮点击事件
 *  @param sureBlock     确定按钮点击事件
 *
 *  @return ZYAlterView
 */
+(instancetype)alterViewWithTitle:(NSString *)title
                                          content:(NSString *)content
                                            cancel:(NSString *)cancel
                                               sure:(NSString *)sure
                       cancel_Block_Clcik:(cancelBlock)cancelBlock
                           sure_Block_Click:(sureBlock)sureBlock;
@end

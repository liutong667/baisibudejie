//
//  UIBarButtonItem+Item.h
//  BaiJie
//
//  Created by 刘通 on 2018/3/25.
//  Copyright © 2018年 com.alwayscoding.www. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Item)
+ (UIBarButtonItem *)itemWithImage:(UIImage *)image hightImage:(UIImage *)highImage traget:(id)target action:(SEL)action;
@end

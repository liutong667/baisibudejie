//
//  UIImage+Image.m
//  BaiJie
//
//  Created by 刘通 on 2018/3/20.
//  Copyright © 2018年 com.alwayscoding.www. All rights reserved.
//

#import "UIImage+Image.h"

@implementation UIImage (Image)
+ (UIImage *)imageOriginalWithName:(NSString *)name {
    UIImage *image = [UIImage imageNamed:name];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}
@end

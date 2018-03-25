//
//  UIView+Frame.m
//  BaiJie
//
//  Created by 刘通 on 2018/3/25.
//  Copyright © 2018年 com.alwayscoding.www. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)
- (CGFloat)lt_x {
    return self.frame.origin.x;
}
- (void)setLt_x:(CGFloat)lt_x {
    CGRect rect = self.frame;
    rect.origin.x = lt_x;
    self.frame = rect;
}

- (CGFloat)lt_y {
    return self.frame.origin.y;
}
- (void)setLt_y:(CGFloat)lt_y {
    CGRect rect = self.frame;
    rect.origin.y = lt_y;
    self.frame = rect;
}

- (CGFloat)lt_height {
    return self.frame.size.height;
}
- (void)setLt_height:(CGFloat)lt_height {
    CGRect rect = self.frame;
    rect.size.height = lt_height;
    self.frame = rect;
}

- (CGFloat)lt_width {
    return self.frame.size.width;
}

- (void)setLt_width:(CGFloat)lt_width {
    CGRect rect = self.frame;
    rect.size.width = lt_width;
    self.frame = rect;
}

@end

//
//  LTTabBar.m
//  BaiJie
//
//  Created by 刘通 on 2018/3/25.
//  Copyright © 2018年 com.alwayscoding.www. All rights reserved.
//

#import "LTTabBar.h"
#import "UIView+Frame.h"

@interface LTTabBar ()
@property (nonatomic, strong) UIButton *plusButton;
@end

@implementation LTTabBar

- (void)layoutSubviews {
    [super layoutSubviews];
    NSInteger count = self.items.count;
    CGFloat btnW  = self.lt_width/(count +1);
    CGFloat btnH = self.lt_height;
    NSInteger i = 0;
    for (UIView *tabBarBtn in self.subviews) {
        if ([tabBarBtn isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            if (i == 2) {
                self.plusButton.frame = CGRectMake(i*btnW, 0, btnW, btnH);
                i++;
            }
            tabBarBtn.frame = CGRectMake(i*btnW, 0, btnW, btnH);
            i++;
        }
    }
}
- (UIButton *)plusButton {
    if (!_plusButton) {
        _plusButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_plusButton setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [_plusButton setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [_plusButton sizeToFit];
        [self addSubview:_plusButton];
    }
    return _plusButton;
}
@end

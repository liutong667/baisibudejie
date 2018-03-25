//
//  LTTabBarController.m
//  BaiJie
//
//  Created by 刘通 on 2018/3/20.
//  Copyright © 2018年 com.alwayscoding.www. All rights reserved.
//

#import "LTTabBarController.h"
#import "LTNavigationViewController.h"

#import "LTEssenceViewController.h"
#import "LTNewViewController.h"
#import "LTPublishViewController.h"
#import "LTFriendTrendViewController.h"
#import "LTMeViewController.h"
#import "UIImage+Image.h"
#import "LTTabBar.h"

@interface LTTabBarController ()

@end

@implementation LTTabBarController

+ (void)load {
    UITabBarItem *item = [UITabBarItem appearanceWhenContainedInInstancesOfClasses:@[[self class]]];
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor blackColor];
    [item setTitleTextAttributes:attrs forState:UIControlStateSelected];
    
    NSMutableDictionary *attrsSize = [NSMutableDictionary dictionary];
    attrsSize[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [item setTitleTextAttributes:attrsSize forState:UIControlStateNormal];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createChildViewController];
    [self createBarTitleButton];
    [self createTabBar];
}

- (void)createChildViewController {
    LTEssenceViewController *essenceVC = [[LTEssenceViewController alloc] init];
    LTNavigationViewController *nav1 = [[LTNavigationViewController alloc] initWithRootViewController:essenceVC];
    [self addChildViewController:nav1];
    
    LTNewViewController *newVC = [[LTNewViewController alloc] init];
    LTNavigationViewController *nav2 = [[LTNavigationViewController alloc] initWithRootViewController:newVC];
    [self addChildViewController:nav2];
    
    LTFriendTrendViewController *ftVC = [[LTFriendTrendViewController alloc] init];
    LTNavigationViewController *nav3 = [[LTNavigationViewController alloc] initWithRootViewController:ftVC];
    [self addChildViewController:nav3];
    
    LTMeViewController *meVC = [[LTMeViewController alloc] init];
    LTNavigationViewController *nav4 = [[LTNavigationViewController alloc] initWithRootViewController:meVC];
    [self addChildViewController:nav4];
    
}
- (void)createBarTitleButton {
    UINavigationController *nav = self.childViewControllers[0];
    nav.tabBarItem.title = @"精华";
    nav.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    nav.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"tabBar_essence_click_icon"];
    
    // 1:新帖
    UINavigationController *nav1 = self.childViewControllers[1];
    nav1.tabBarItem.title = @"新帖";
    nav1.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
    nav1.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"tabBar_new_click_icon"];
    
    
    // 3.关注
    UINavigationController *nav3 = self.childViewControllers[2];
    nav3.tabBarItem.title = @"关注";
    nav3.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    nav3.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"tabBar_friendTrends_click_icon"];
    
    // 4.我
    UINavigationController *nav4 = self.childViewControllers[3];
    nav4.tabBarItem.title = @"我";
    nav4.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    nav4.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"tabBar_me_click_icon"];
}
- (void)createTabBar {
    LTTabBar *tabBar = [[LTTabBar alloc] init];
//    self.tabBar
    [self setValue:tabBar forKey:@"tabBar"];
}

@end

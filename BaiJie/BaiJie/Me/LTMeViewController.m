//
//  LTMeViewController.m
//  BaiJie
//
//  Created by 刘通 on 2018/3/25.
//  Copyright © 2018年 com.alwayscoding.www. All rights reserved.
//

#import "LTMeViewController.h"

@interface LTMeViewController ()

@end

@implementation LTMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self setupNavBar];
}
- (void)setupNavBar {
    self.navigationItem.title = @"我的";
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

@end

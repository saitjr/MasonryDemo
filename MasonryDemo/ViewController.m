//
//  ViewController.m
//  MasonryDemo
//
//  Created by TangJR on 15/4/29.
//  Copyright (c) 2015年 tangjr. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 防止block中的循环引用
    __weak typeof(self) weakSelf = self;
    
    // 初始化view并设置背景
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    // 使用mas_makeConstraints添加约束
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        
        // 添加大小约束
        make.size.mas_equalTo(CGSizeMake(100, 100));
        // 添加居中约束（居中方式与self相同）
        make.center.equalTo(weakSelf.view);
    }];
}

@end
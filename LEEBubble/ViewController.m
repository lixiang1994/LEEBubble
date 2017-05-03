//
//  ViewController.m
//  LEEBubble
//
//  Created by 李响 on 16/8/15.
//  Copyright © 2016年 lee. All rights reserved.
//

#import "ViewController.h"

#import "LEEBubble.h"

@interface ViewController ()

@property (nonatomic , strong ) LEEBubble *bubble;//气泡视图

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //初始化子视图
    
    [self initSubView];
    
}

#pragma mark - 初始化子视图

- (void)initSubView{
    
    _bubble = [[LEEBubble alloc]initWithFrame:CGRectMake(CGRectGetWidth(self.view.frame) - 58, CGRectGetHeight(self.view.frame) - 123, 48, 48)];
    
    _bubble.image = [UIImage imageNamed:@"image"];
    
    _bubble.edgeInsets = UIEdgeInsetsMake(64, 0 , 0 , 0);
    
    [self.view addSubview:_bubble];
    
    __weak typeof(self) weakSelf = self;
    
    _bubble.clickBubbleBlock = ^(){
        
        if (weakSelf){
            
            //点击事件
        }
        
    };

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

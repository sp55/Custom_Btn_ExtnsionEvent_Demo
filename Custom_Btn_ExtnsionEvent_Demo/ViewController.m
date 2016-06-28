//
//  ViewController.m
//  Custom_Btn_ExtnsionEvent_Demo
//
//  Created by admin on 16/6/28.
//  Copyright © 2016年 AlezJi. All rights reserved.
//http://www.jianshu.com/p/ce2d3191224f
//扩大按钮(UIButton)点击范围(随意方向扩展哦)

#import "ViewController.h"
#import "CustomButton.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CustomButton *customBtn=[CustomButton buttonWithType:UIButtonTypeCustom];
    customBtn.frame = CGRectMake(100, 100, 100, 40);
    customBtn.backgroundColor =[UIColor redColor];
    [customBtn setTitle:@"自定义按钮" forState:UIControlStateNormal];
    [customBtn setTintColor:[UIColor whiteColor]];
    [customBtn addTarget:self action:@selector(customBtnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:customBtn];
}
-(void)customBtnAction
{

    NSLog(@"自定义按钮的事件点击范围扩大了吗");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

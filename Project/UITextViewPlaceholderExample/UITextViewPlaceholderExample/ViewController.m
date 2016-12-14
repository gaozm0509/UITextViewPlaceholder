//
//  ViewController.m
//  UITextViewPlaceholderExample
//
//  Created by 高泽民 on 16/12/14.
//  Copyright © 2016年 zm. All rights reserved.
//

#import "ViewController.h"
#import "UITextView+Placeholder.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - Cycle life
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(100, 100, 200, 300)];
    textView.textColor = [UIColor blackColor];
    textView.font = [UIFont systemFontOfSize:14];
    textView.backgroundColor = [UIColor greenColor];
    textView.placeholder = @"test";
    
    [self.view addSubview:textView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Getter and setter



#pragma mark - Delegate



#pragma mark - Net request



#pragma mark - Event method



#pragma mark - Pravit method


@end

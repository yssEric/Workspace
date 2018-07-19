//
//  TestViewController.m
//  OtherTestObj
//
//  Created by Apple on 2018/7/18.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

+ (TestViewController *)shareTestVc{
    static TestViewController *shareVc = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareVc = [[self alloc] init];
    });
    return shareVc;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"++++++++++");
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

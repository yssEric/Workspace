//
//  ViewController.m
//  MainTestObj
//
//  Created by Apple on 2018/7/16.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "ViewController.h"
#import <OtherTestObj/TestViewController.h>
#import <OtherTestObj/TestViewController.m>
#import <StaticLaSource/StaticLaSource.h>
#import "TouchFramework/TouchFramework.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    //test
    [TestViewController shareTestVc];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.bounds]
    ;
    /*NSString *lib1BundlePath = [[NSBundle mainBundle] pathForResource:@"OtherSource" ofType:@"bundle"];
    NSBundle *lib1Bundle = [NSBundle bundleWithPath:lib1BundlePath];
    NSString *imagePath = [lib1Bundle pathForResource:@"tree" ofType:@"jpg"];
    imageView.image = [[UIImage alloc] initWithContentsOfFile:imagePath];*/
    
    imageView.image = [UIImage imageNamed:@"OtherSource.bundle/tree.jpg"];
    [self.view addSubview:imageView];
    
    //调用静态库方法
    [StaticLaSource test];
    
    //调用Framework方法
    [TestObj returnVaule];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

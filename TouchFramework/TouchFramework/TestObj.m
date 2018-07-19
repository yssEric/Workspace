//
//  TestObj.m
//  testFramework
//
//  Created by Apple on 2018/5/3.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "TestObj.h"

@implementation TestObj

+ (TestObj *)returnVaule {
    static TestObj *obj = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        obj = [[self alloc] init];
    });
    return obj;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSInteger a = 10;
        NSInteger b = 20;
        NSLog(@"+++++++%ld++++++",a+b);
    }
    return self;
}

@end

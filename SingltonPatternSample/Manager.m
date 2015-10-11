//
//  Manager.m
//  SingltonPatternSample
//
//  Created by lance on 15/10/11.
//  Copyright © 2015年 lance. All rights reserved.
//

#import "Manager.h"

//主要用于排除单例类继承自NSString的情况
#define STR_MANAGER @"STR_MANAGER"

static Manager *_sharedManager = nil;

@implementation Manager

+ (Manager *)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedManager = (Manager *)STR_MANAGER;
        _sharedManager = [[Manager alloc] init];
    });
    
    return _sharedManager;
}

- (instancetype)init {
    NSString *str = (NSString *)_sharedManager;
    if ([str isKindOfClass:[NSString class]] && [str isEqualToString:STR_MANAGER]) {
        self = [super init];
        if (self) {
            
        }
        return self;
    }
    
    return nil;
}

@end

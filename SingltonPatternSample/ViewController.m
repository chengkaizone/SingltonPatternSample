//
//  ViewController.m
//  SingltonPatternSample
//
//  Created by lance on 15/10/11.
//  Copyright © 2015年 lance. All rights reserved.
//

#import "ViewController.h"
#import "Manager.h"
#import "OtherManager.h"

/**
 *  严格单例模式的简单运用
 *  不允许手动创建对象,手动创建都会返回nil
 *  源于OC语言没有私有方法的缘故,所以需要作特殊处理
 */
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@", [[Manager alloc] init]);
    NSLog(@"%@", [Manager shareInstance]);
    NSLog(@"%@", [Manager shareInstance]);
    NSLog(@"%@", [Manager new]);
    
    NSLog(@"%@", [OtherManager new]);
    NSLog(@"%@", [OtherManager shareInstance]);
    NSLog(@"%@", [OtherManager shareInstance]);
    NSLog(@"%@", [OtherManager new]);
}


@end

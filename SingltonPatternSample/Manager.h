//
//  Manager.h
//  SingltonPatternSample
//
//  Created by lance on 15/10/11.
//  Copyright © 2015年 lance. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Manager : NSObject

+ (Manager *)shareInstance;

@end

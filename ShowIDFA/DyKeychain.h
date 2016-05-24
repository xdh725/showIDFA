//
//  DyKeychain.h
//  斗鱼直播
//
//  Created by douyu on 14-7-1.
//  Copyright (c) 2014年 OS-X-WANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Security/Security.h>
@interface DyKeychain : NSObject

+ (void)save:(NSString *)service data:(id)data;
+ (id)load:(NSString *)service;
+ (void)delete:(NSString *)service;
@end

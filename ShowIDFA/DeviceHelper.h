//
//  DeviceHelper.h
//  DYZB
//
//  Created by 周兵 on 15-3-18.
//  Copyright (c) 2015年 mydouyu. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <sys/socket.h>
#include <sys/sysctl.h>
#include <net/if.h>
#include <net/if_dl.h>
#import "Reachability.h"

enum UIDeviceFamily {
    UIDeviceFamilyiPhone = 0,
    UIDeviceFamilyiPod = 1,
    UIDeviceFamilyiPad,
    UIDeviceFamilyUnknown
};


@interface DeviceHelper : NSObject

+ (NSString *)getMacAddress;
+ (NSString *)getCurrentIOSVersion;
+ (NSString *)getDeviceVersion;

+ (NSString *)modelName;                // 获取设备型号(较全)
+ (enum UIDeviceFamily)deviceFamily;    //

// 2013.11.27
+ (NSString *)getDeviceID;  // 获取设备唯一标识

// 判断当前设备可否打电话
+ (BOOL)deviceCanCallOrNot;

+ (NSInteger)connectedToNetwork;

+(NSString*) getIPAddress;

@end


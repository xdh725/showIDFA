//
//  ViewController.m
//  ShowIDFA
//
//  Created by Xiedonghua on 16/1/27.
//  Copyright © 2016年 com.douyutv. All rights reserved.
//

#import "ViewController.h"
#import <AdSupport/AdSupport.h>
#import "DeviceHelper.h"

@interface ViewController ()
{
    __weak IBOutlet UILabel *deviceUUID;
    __weak IBOutlet UILabel *deviceMAC;
    __weak IBOutlet UILabel *deviceIDFA;
    __weak IBOutlet UILabel *deviceIP;
    
    __weak IBOutlet UILabel *currentVersion;
    __weak IBOutlet UILabel *deviceVersion;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    currentVersion.text = [NSString stringWithFormat:@"%@%@", @"currentVersion:", [DeviceHelper getCurrentIOSVersion]];
    deviceUUID.text = [NSString stringWithFormat:@"%@%@", deviceUUID.text, [DeviceHelper getDeviceID]];
    deviceIP.text = [NSString stringWithFormat:@"%@%@",deviceIP.text, [DeviceHelper getIPAddress]];
    deviceMAC.text = [NSString stringWithFormat:@"%@%@", deviceMAC.text, [DeviceHelper getMacAddress]];
    deviceVersion.text = [NSString stringWithFormat:@"%@%@", @"deviceVersion:", [DeviceHelper getDeviceVersion]];
    
    NSString *adId =[[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    deviceIDFA.text = [NSString stringWithFormat:@"%@%@", deviceIDFA.text, adId];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

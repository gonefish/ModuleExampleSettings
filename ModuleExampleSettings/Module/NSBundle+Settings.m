//
//  NSBundle+Settings.m
//  ModuleExampleSettings
//
//  Created by 钱国强 on 16/4/14.
//  Copyright © 2016年 Qian GuoQiang. All rights reserved.
//

#import "NSBundle+Settings.h"
#import "SettingsModule.h"

@implementation NSBundle (Settings)

+ (instancetype)settingsBundle
{
    return [NSBundle bundleForClass:[SettingsModule class]];
}

@end

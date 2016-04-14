//
//  UIStoryboard+Settings.m
//  ModuleExampleSettings
//
//  Created by 钱国强 on 16/4/14.
//  Copyright © 2016年 Qian GuoQiang. All rights reserved.
//

#import "UIStoryboard+Settings.h"
#import "NSBundle+Settings.h"

@implementation UIStoryboard (Settings)

+ (instancetype)settingsStoryboard
{
    return [UIStoryboard storyboardWithName:@"SettingsMain"
                                     bundle:[NSBundle settingsBundle]];
}

@end

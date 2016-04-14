//
//  SettingsModule.m
//  ModuleExampleSettings
//
//  Created by 钱国强 on 16/4/9.
//  Copyright © 2016年 Qian GuoQiang. All rights reserved.
//

#import "SettingsModule.h"
#import "ViewController.h"
#import "NSBundle+Settings.h"
#import "UIStoryboard+Settings.h"

@implementation SettingsModule

+ (NSArray *)supportActionIdentifiers
{
    return @[@"SettingsModuleText"];
}

- (id)performActionWithIdentifier:(NSString *)identifier options:(NSDictionary *)options
{
    if ([identifier isEqualToString:GQModulePortalViewControllerIdentifier]) {
        return [[UIStoryboard settingsStoryboard] instantiateInitialViewController];
    } else {
        return [[NSUserDefaults standardUserDefaults] objectForKey:@"SettingsModuleText"];
    }
}

@end

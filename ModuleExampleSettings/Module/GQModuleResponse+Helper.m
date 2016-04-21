//
//  GQModuleResponse+Helper.m
//  ModuleExampleSettings
//
//  Created by 钱国强 on 16/4/21.
//  Copyright © 2016年 Qian GuoQiang. All rights reserved.
//

#import "GQModuleResponse+Helper.h"

@implementation GQModuleResponse (Helper)

- (nullable id <ListItem>)gq_listItem
{
    return [self convertObjectToProtocol:@protocol(ListItem)];
}

@end

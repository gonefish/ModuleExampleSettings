//
//  GQModuleResponse+Helper.h
//  ModuleExampleSettings
//
//  Created by 钱国强 on 16/4/21.
//  Copyright © 2016年 Qian GuoQiang. All rights reserved.
//

#import <GQModularize/GQModuleResponse.h>

#import "ListItemProtocol.h"

@interface GQModuleResponse (Helper)

- (nullable id <ListItem>)gq_listItem;

@end

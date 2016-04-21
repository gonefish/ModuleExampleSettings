//
//  ViewController.m
//  ModuleExampleSettings
//
//  Created by 钱国强 on 16/4/9.
//  Copyright © 2016年 Qian GuoQiang. All rights reserved.
//

#import "ViewController.h"
#import "SettingsModule.h"
#import "GQModuleResponse+Helper.h"

#import <GQModularize/GQModuleCenter.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UILabel *countLabel;

@property (weak, nonatomic) id observer;

@property (weak, nonatomic) IBOutlet UILabel *listItemName;

@end

@implementation ViewController

- (IBAction)save:(UIButton *)sender {
    
    [[NSUserDefaults standardUserDefaults] setObject:self.textField.text
                                              forKey:@"SettingsModuleText"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.textField.text = [[SettingsModule invokeWithIdentifier:@"SettingsModuleText"] gq_string];
    
    __weak typeof(self)weakSelf = self;
    
    self.observer = [GQModuleCenter addObserverForEventName:@"ListCount"
                                                usingBlock:^(id  _Nonnull updateValue) {
                                                    weakSelf.countLabel.text = updateValue;
                                                }];
    
    id <ListItem> item = [[SettingsModule invokeWithIdentifier:@"CreateItem"] gq_listItem];
    
    self.listItemName.text = [item name];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [GQModuleCenter removeObserver:self.observer];
}

@end

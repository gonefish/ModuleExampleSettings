//
//  ViewController.m
//  ModuleExampleSettings
//
//  Created by 钱国强 on 16/4/9.
//  Copyright © 2016年 Qian GuoQiang. All rights reserved.
//

#import "ViewController.h"
#import "SettingsModule.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

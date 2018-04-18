//
//  ViewController.m
//  OCDZMeBookRead
//
//  Created by 邓泽淼 on 2018/4/18.
//  Copyright © 2018年 邓泽淼. All rights reserved.
//

#import "ViewController.h"
#import "OCDZMeBookRead-Swift.h"
#import "MBProgressHUD+DZM.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"OC-DZMeBookRead";
}

- (IBAction)clickRead:(UIButton *)sender {
    
    [MBProgressHUD showMessage:@"本地文件第一次解析慢,以后就会秒进了"];
    
    __weak ViewController *weakSelf = self;
    
    [DZMReadParser ParserLocalURLWithUrl:[[NSBundle mainBundle] URLForResource:@"求魔" withExtension:@"txt"] complete:^(DZMReadModel * _Nonnull readModel) {
        
        [MBProgressHUD hideHUD];
        
        DZMReadController * read = [[DZMReadController alloc] init];
        
        read.readModel = readModel;
        
        [weakSelf.navigationController pushViewController:read animated:YES];
    }];
}

@end

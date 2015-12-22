//
//  ViewController.m
//  GUID
//
//  Created by yons on 15/3/24.
//  Copyright (c) 2015年 yons. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame=CGRectMake(20, 200, self.view.frame.size.width-40, 100);
    [btn setTitle:@"输出GUID" forState:UIControlStateNormal];
    btn.backgroundColor=[UIColor redColor];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
-(void)btnAction
{
    NSLog(@"%@",[self getUniqueStrByUUID]);
}
- (NSString *)getUniqueStrByUUID
{
    CFUUIDRef uuidObj = CFUUIDCreate(nil);//create a new UUID
    
    //get the string representation of the UUID
    
    NSString *uuidString = (__bridge_transfer NSString *)CFUUIDCreateString(nil,uuidObj);
    
    CFRelease(uuidObj);
    
    return uuidString ;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

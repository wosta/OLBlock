//
//  OLExample03ViewController.m
//  OLCollectionViewController
//
//  Created by peter on 16/3/29.
//  Copyright © 2016年 olive. All rights reserved.
//

#import "OLExample03ViewController.h"

@interface OLExample03ViewController ()

@end

@implementation OLExample03ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

// 参数block不能有名称
- (void)getQiNiuScope:(NSString *)scope success:(void (^)(NSString *token)) success faile:(void (^)(NSError *error)) faile{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

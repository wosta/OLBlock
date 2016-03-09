//
//  ViewController.m
//  bolck_block
//
//  Created by 魏旺 on 16/3/9.
//  Copyright © 2016年 olive. All rights reserved.
//

#import "ViewController.h"
#import "RootViewController.h"

@interface ViewController ()
@property (nonatomic, strong)UIButton *button;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *button =  [[UIButton alloc] init];
    button.frame = CGRectMake(50, 100, 100, 50);
    [button setTitle:@"aaa" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor greenColor];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    self.button = button;
}

- (void)buttonClick {
    RootViewController *root = [[RootViewController alloc] init];
    [root changeTitleName:^(NSString *title) {
        [self.button setTitle:title forState:UIControlStateNormal];
    }];
    [self.navigationController pushViewController:root animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

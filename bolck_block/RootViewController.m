//
//  RootViewController.m
//  bolck_block
//
//  Created by 魏旺 on 16/3/9.
//  Copyright © 2016年 olive. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button =  [[UIButton alloc] init];
    button.frame = CGRectMake(50, 100, 100, 50);
    [button setTitle:@"aaa" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonClick {
    if (self.changeTitle) {
        self.changeTitle(@"cccccc");
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (void)changeTitleName:(ChangeTitle)changeTitleBlock {
    _changeTitle = [changeTitleBlock copy];
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

//
//  RootViewController.m
//  bolck_block
//
//  Created by peter on 16/3/9.
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
    UIButton *button =  [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 200, 50)];
    [button setTitle:@"好的" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor blueColor];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonClick {
    self.changeTitle(@"OK");
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)setChangeTitle:(ChangeTitle)changeTitle {
    self.changeTitle = [changeTitle copy];
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

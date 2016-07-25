//
//  OLExample02SubViewController.m
//  bolck_block
//
//  Created by olive on 16/7/25.
//  Copyright © 2016年 olive. All rights reserved.
//

#import "OLExample02SubViewController.h"

@interface OLExample02SubViewController ()
@property (nonatomic, strong)UIButton *backButton;
@end

@implementation OLExample02SubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self uiConfig];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)uiConfig {
    self.backButton = ({
        UIButton *backButton = [[UIButton alloc] initWithFrame:CGRectMake(50, 100, 50, 44)];
        backButton.backgroundColor = [UIColor orangeColor];
        [backButton setTitle:@"back" forState:UIControlStateNormal];
        [backButton addTarget:self action:@selector(backButtonClick) forControlEvents:UIControlEventTouchUpInside];
        backButton;
    });
    [self.view addSubview:self.backButton];
}

- (void)backButtonClick {
    UIColor *color = [UIColor greenColor];
    self.returnColorBlock(color);
    [self.navigationController popViewControllerAnimated:YES];
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

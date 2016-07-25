//
//  OLExample02ViewController.m
//  OLCollectionViewController
//
//  Created by peter on 16/3/29.
//  Copyright © 2016年 olive. All rights reserved.
//

#import "OLExample02ViewController.h"
#import "OLExample02SubViewController.h"

typedef void (^BoolBlock)(BOOL);
typedef int (^IntBlock)(void);
typedef BoolBlock (^HugeBlock)(IntBlock);


@interface OLExample02ViewController ()
@property (nonatomic, strong) UIButton *nextButton;
@property (nonatomic, strong) UIColor *color;
@end

@implementation OLExample02ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self uiConfig];
}

- (void)uiConfig {
    self.nextButton = ({
        UIButton *nextButton = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 50, 44)];
        nextButton.backgroundColor = [UIColor redColor];
        [nextButton setTitle:@"next" forState:UIControlStateNormal];
        [nextButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
        nextButton;
    });
    [self.view addSubview:self.nextButton];
}

- (void)nextButtonClick {
    OLExample02SubViewController *sub = [[OLExample02SubViewController alloc] init];
    [sub setReturnColorBlock:^(UIColor *color){
        self.view.backgroundColor = color;
    }];
    [self.navigationController pushViewController:sub animated:YES];
}

- (void)block01 {
    
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

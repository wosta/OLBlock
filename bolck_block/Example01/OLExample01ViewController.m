//
//  OLExample01ViewController.m
//  OLCollectionViewController
//
//  Created by peter on 16/3/29.
//  Copyright © 2016年 olive. All rights reserved.
//

#import "OLExample01ViewController.h"

@interface OLExample01ViewController ()

@end

@implementation OLExample01ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view from its nib.
    
//    [self block01];
//    [self block02];
    [self block03];
}

/**
 *  1.截获自动变量,截获之后就不能更改
 *  2.如何在block体内更改外面的变量? __block声明变量
 */
- (void)block01 {
    int a = 3;
    __block int b = 3;
    void (^blok)(int) = ^(int i) {
//        a = 9;// 编译不通过；原因是a 被block截取后不能被修改了，所以a的值是3不变
        b = 5; // 可以修改
        NSLog(@"a的值是多少？%zd", a);
        NSLog(@"blok里面的值是：%zd", i);
    };
    a = 5; // 这里修改a的值对于上面的block没有任何影响
    blok(a);
}

/**
 * 截获的变量不能更改值，但是不影响他赋值,增加值，减少值
 */
- (void)block02 {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    [array addObject:@"arr02"];
    void (^block)() = ^{
        // 只是对截获的变量进行了操作，而没有进行赋值，所以对于截获变量，可以进行操作而不可以进行赋值。
        [array addObject:@"arr01"];
    };
    block();
    NSLog(@"%@", array);
}

/**
 *  typedef
 */
- (void)block03 {
    
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

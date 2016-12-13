//
//  OLExample04ViewController.m
//  OLCollectionViewController
//
//  Created by peter on 16/3/29.
//  Copyright © 2016年 olive. All rights reserved.
//

#import "OLExample04ViewController.h"

@interface OLExample04ViewController ()

@end

@implementation OLExample04ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    void (^printBlock)() = ^(){
        NSLog(@"no num");
    };
    
    void (^myBolck)(int) = ^(int num){
        NSLog(@"num:%d", num);
    };
    
    printBlock();
    printBlock(9);
    myBolck(10);
    
    printNumBlock(12);
    
    int (^blockName)() = ^(){
        return 10;
    };
    
    NSLog(@"%d", blockName());
}

void (^printNumBlock)(int) = ^(int num) {
    printf("int number is %d", num);
};

- (void)okBlock:(int (^)(int))block {
    int b = block(3);
    NSLog(@"b=%d", b);
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

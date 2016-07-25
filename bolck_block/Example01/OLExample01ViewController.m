//
//  OLExample01ViewController.m
//  OLCollectionViewController
//
//  Created by peter on 16/3/29.
//  Copyright © 2016年 olive. All rights reserved.
//

#import "OLExample01ViewController.h"

typedef NSString *(^YourBlock)(int, int);
typedef int (^MySquare)(int);

@interface OLExample01ViewController ()
/** 第一种 */
@property (nonatomic, copy) void(^myBlock)(int);
/**
 * typedef 定义 NSString *(^YourBlock)(int, int)
 */
@property (nonatomic, copy) YourBlock yourBlock;

@property (nonatomic, copy) MySquare myFunction;
@end

@implementation OLExample01ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view from its nib.
    
    [self block01];
//    [self block02];
//    [self block03];
//    [self block04];
//    [self block05];
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
 *  如何定义一个block属性
 第一种：（直接写）
 @property (copy) void(^MyBlock)(void);
 
 第二种：（typedef）
 typedef void(^MyBlock)(void);
 
 @property (nonatomic, copy) MyBlock block;
 */
- (void)block03 {
    // 赋值给yourBlock 如果么有这一步，下面的yourStr这一步报错
    self.yourBlock = ^(int a, int b){
        return @"aaaaa";
    };
    // 赋值
    NSString *yourStr = self.yourBlock(7, 8);
    NSLog(@"%@++++++%@", self.yourBlock, yourStr);
    
    [self blockFunc:^NSString *(int a, int b) {
        a = 7;
        b = 8;
        return @"aaa";
    }];
    
    [self blockFunction:^NSString *(int a, int b) {
        return [NSString stringWithFormat:@"a+b=%zd+%zd=%zd", a, b, a+b];
    }];
    [self blockFunction:self.yourBlock];
    
}

- (void)blockFunc:(NSString *(^)(int a, int b))blockFun{
    NSString *str = blockFun(7, 8);
    NSLog(@"blockFunc:str= %@", str);
}

- (void)blockFunction:(YourBlock)yourBlock {
    
}

- (void)block04 {
    // 这种写法挺诡异的，没有返回值不说，关键是返回值类型没有，为何能够return 整形，当然这里字符串也行
    ^(int a){return 2*a;};
    ^(int a){
        return a * a ;
    };
    // 这种写法更诡异了，花括号末尾为何不能有; 且(5); 无法理解，好诡异
    // 网上一种说法：这是代表Block会回传输入值的平方值（int a 就是参数列， return a*a; 就是行为主体）。记得行为主体里最后要加“;”，因为是叙述，而整个{}最后也要加“;”，因为Block是物件实体。
    int result01 = ^(int a){return 2*a;}(5);
    NSString * result02 = ^(int a) {
        return @"aaaa";
    }
    (5);
    
    NSLog(@"%d", result01);
    NSLog(@"%@", result02);
}

- (void)block05 {
    int (^square)(int a) = ^(int a){
        NSLog(@"square:%d", a*a);
        return a * a;
    };
    NSLog(@"%d", square(5));
    
//    self.myFunction(square);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

/*1
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

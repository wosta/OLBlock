//
//  OLExample02ViewController.m
//  OLCollectionViewController
//
//  Created by peter on 16/3/29.
//  Copyright © 2016年 olive. All rights reserved.
//

#import "OLExample02ViewController.h"

@interface OLExample02ViewController ()

@end

@implementation OLExample02ViewController

// 视图销毁时
- (void)dealloc {
    NSLog(@"dealloc");
}

// 对象创建时
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"init");
    }
    return self;
}

// 一般不用重新该方法
- (void)loadView {
    [super loadView];
    NSLog(@"loadView");
}

/**
 *  layoutSubviews在以下情况下会被调用：
 *  1、init初始化不会触发layoutSubviews
 *  2、addSubview会触发layoutSubviews
 *  3、设置view的Frame会触发layoutSubviews，当然前提是frame的值设置前后发生了变化
 *  4、滚动一个UIScrollView会触发layoutSubviews
 *  5、旋转Screen会触发父UIView上的layoutSubviews事件
 *  6、改变一个UIView大小的时候也会触发父UIView上的layoutSubviews事件
 */
- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"viewWillLayoutSubviews");
}

// Called when the view is about to made visible. Default does nothing视图即将可见时调用。默认情况下不执行任何操作
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");
}

// Called when the view has been fully transitioned onto the screen. Default does nothing视图已完全过渡到屏幕上时调用
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"viewDidAppear");
}

// Called when the view is dismissed, covered or otherwise hidden. Default does nothing视图被驳回时调用，覆盖或以其他方式隐藏。默认情况下不执行任何操作
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear");
}

// Called after the view was dismissed, covered or otherwise hidden. Default does nothing视图被驳回后调用，覆盖或以其他方式隐藏。默认情况下不执行任何操作loadView; This is where subclasses should create their custom view hierarchy if they aren't using a nib. Should never be called directly.这是当他们没有正在使用nib视图页面，子类将会创建自己的自定义视图层。绝不能直接调用。
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"viewDidDisappear");
}

// 在视图加载后被调用，如果是在代码中创建的视图加载器，他将会在loadView方法后被调用，如果是从nib视图页面输出，他将会在视图设置好后后被调用。
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view from its nib.
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

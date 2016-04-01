//
//  ViewController.m
//  bolck_block
//
//  Created by peter on 16/3/9.
//  Copyright © 2016年 olive. All rights reserved.
//

#import "ViewController.h"
#import "RootViewController.h"
#import "OLExample01ViewController.h"
#import "OLExample02ViewController.h"
#import "OLExample03ViewController.h"
#import "OLExample04ViewController.h"
#import "OLExample05ViewController.h"

static NSString * const ViewControllerReuseIdentifierId = @"ViewControllerReuseIdentifierId";

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView    *tableView;
@property (nonatomic, strong) NSMutableArray *dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.tableView = [[UITableView alloc] initWithFrame:[[UIScreen mainScreen]bounds] style:UITableViewStylePlain];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:ViewControllerReuseIdentifierId];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.tableFooterView = [UIView new];
    [self.view addSubview:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return  44.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ViewControllerReuseIdentifierId];
    cell.textLabel.text = [NSString stringWithFormat:@"Example0%zd", indexPath.row+1];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
        {
            OLExample01ViewController *examp01 = [[OLExample01ViewController alloc] init];
            [self.navigationController pushViewController:examp01 animated:YES];
        }
            break;
            case 1:
        {
            OLExample01ViewController *examp01 = [[OLExample01ViewController alloc] init];
            [self.navigationController pushViewController:examp01 animated:YES];
        }
            break;
            case 2:
        {
            OLExample02ViewController *examp02 = [[OLExample02ViewController alloc] init];
            [self.navigationController pushViewController:examp02 animated:YES];
        }
            break;
            case 3:
        {
            OLExample03ViewController *examp03 = [[OLExample03ViewController alloc] init];
            [self.navigationController pushViewController:examp03 animated:YES];
        }
            break;
            case 4:
        {
            OLExample04ViewController *examp04 = [[OLExample04ViewController alloc] init];
            [self.navigationController pushViewController:examp04 animated:YES];
        }
            break;
            case 5:
        {
            OLExample05ViewController *examp05 = [[OLExample05ViewController alloc] init];
            [self.navigationController pushViewController:examp05 animated:YES];
        }
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

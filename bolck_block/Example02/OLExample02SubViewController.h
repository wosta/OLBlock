//
//  OLExample02SubViewController.h
//  bolck_block
//
//  Created by olive on 16/7/25.
//  Copyright © 2016年 olive. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^OLReturnColorBlock)(UIColor *color);

@interface OLExample02SubViewController : UIViewController

@property (nonatomic, copy) OLReturnColorBlock returnColorBlock;

@end

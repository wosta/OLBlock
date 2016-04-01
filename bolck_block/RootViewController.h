//
//  RootViewController.h
//  bolck_block
//
//  Created by peter on 16/3/9.
//  Copyright © 2016年 olive. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ChangeTitle)(NSString *);

@interface RootViewController : UIViewController
/** <#type#> */
@property (nonatomic, copy)ChangeTitle changeTitle;
@end

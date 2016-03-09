//
//  RootViewController.h
//  bolck_block
//
//  Created by 魏旺 on 16/3/9.
//  Copyright © 2016年 olive. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ChangeTitle)(NSString *title);

@interface RootViewController : UIViewController
/** block */
@property (nonatomic, copy) ChangeTitle changeTitle;

- (void)changeTitleName:(ChangeTitle)changeTitleBlock;

@end

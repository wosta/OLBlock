//
//  OLExample04ViewController.h
//  OLCollectionViewController
//
//  Created by peter on 16/3/29.
//  Copyright © 2016年 olive. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OLExample04ViewController : UIViewController
@property (nonatomic, copy) int (^myBoloc)(int, int);

- (void)okBlock:(int (^)(int))block;
@end

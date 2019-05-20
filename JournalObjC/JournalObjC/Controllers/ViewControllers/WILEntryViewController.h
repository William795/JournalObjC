//
//  WILEntryViewController.h
//  JournalObjC
//
//  Created by William Moody on 5/20/19.
//  Copyright © 2019 William Moody. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WILEntry;

NS_ASSUME_NONNULL_BEGIN

@interface WILEntryViewController : UIViewController

@property (nonatomic, strong) WILEntry *entry;

@end

NS_ASSUME_NONNULL_END

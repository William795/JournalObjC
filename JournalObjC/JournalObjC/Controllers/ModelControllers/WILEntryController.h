//
//  WILEntryController.h
//  JournalObjC
//
//  Created by William Moody on 5/20/19.
//  Copyright © 2019 William Moody. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WILEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface WILEntryController : NSObject

@property (nonatomic, strong, readonly) NSArray* entry;

+ (WILEntryController*) shared;

//CRUD

- (void) createEntryWithName:(NSString*)name body:(NSString*)body;

- (void) deleteEntry:(WILEntry*)entry;

- (void) updateEntryName:(NSString*)name body:(NSString*)body entry:(WILEntry*)entry;

@end

NS_ASSUME_NONNULL_END

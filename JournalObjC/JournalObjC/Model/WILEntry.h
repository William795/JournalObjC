//
//  WILEntry.h
//  JournalObjC
//
//  Created by William Moody on 5/20/19.
//  Copyright © 2019 William Moody. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WILEntry : NSObject

@property (nonatomic, copy) NSString* title;
@property (nonatomic, copy) NSString* body;

- (instancetype) initWithName:(NSString*)title body:(NSString*)body;


@end

NS_ASSUME_NONNULL_END

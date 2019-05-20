//
//  WILEntry.m
//  JournalObjC
//
//  Created by William Moody on 5/20/19.
//  Copyright © 2019 William Moody. All rights reserved.
//

#import "WILEntry.h"

@implementation WILEntry

- (instancetype)initWithName:(NSString *)title body:(NSString *)body {
    self = [super init];
    if (self) {
        _title = title;
        _body = body;
    }
    return self;
}

@end

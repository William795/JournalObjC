//
//  WILEntryController.m
//  JournalObjC
//
//  Created by William Moody on 5/20/19.
//  Copyright © 2019 William Moody. All rights reserved.
//

#import "WILEntryController.h"

@interface WILEntryController()
@property (nonatomic, strong, readwrite) NSMutableArray* internalEntrys;

@end

@implementation WILEntryController

+ (WILEntryController*)shared {
    static WILEntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [WILEntryController new];
    });
    return shared;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalEntrys = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray*) entry{
    return self.internalEntrys;
}

- (void) createEntryWithName:(NSString *)name body:(NSString *)body{
    WILEntry *newEntry = [[WILEntry alloc] initWithName:name body:body];
    [self.internalEntrys addObject:newEntry];
}

- (void) updateEntryName:(NSString *)name body:(NSString *)body entry:(WILEntry *)entry {
    entry.title = name;
    entry.body = body;
}

-(void) deleteEntry:(WILEntry *)entry {
    [self.internalEntrys removeObject:entry];
}

@end

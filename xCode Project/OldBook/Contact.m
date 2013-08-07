//
//  Contact.m
//  OldBook
//
//  Created by Mat on 7/08/2013.
//  Copyright (c) 2013 Mat. All rights reserved.
//

#import "Contact.h"
#define NOTSET -1

@implementation Contact

- (id) init {
    self = [super init];
    return self;
}

- (id) initWithObjects:(NSArray *)objs {
    if(self = [super init]){
        self.contactImage = [UIImage imageNamed:[objs objectAtIndex:0]];
        self.contactName = (NSString *) [objs objectAtIndex:1];
        self.uniqueID = NOTSET;
        self.lastSeen = nil;
    }
    return self;
}

- (id) initWithImage:(UIImage *)image {
    if(self = [super init]){
        self.contactName = nil;
        self.lastSeen = nil;
        self.contactImage = image;
        self.uniqueID = NOTSET;
    }
    return self;
}

- (NSString *) getLastSeenString{
    return @"Haha not done yet!";
}



@end

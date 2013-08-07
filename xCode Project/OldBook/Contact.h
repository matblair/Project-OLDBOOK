//
//  Contact.h
//  OldBook
//
//  Created by Mat on 7/08/2013.
//  Copyright (c) 2013 Mat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

//Contact Image
@property (weak,nonatomic)UIImage *contactImage;
//Contact Name
@property (weak,nonatomic)NSString *contactName;
//Unique ID For Server Connections
@property (assign,nonatomic)NSInteger uniqueID;
//Last Seen Date
@property (weak,nonatomic)NSDate *lastSeen;

//Initialisers and convienience constructors
- (id) init;
- (id) initWithImage: (UIImage *)image;
- (id) initWithObjects: (NSArray *)objs;

//Methods for data retrieval and manipulation
- (NSString *) getLastSeenString;

@end

//
//  ContactSearchController.h
//  OldBook
//
//  Created by Mat on 7/08/2013.
//  Copyright (c) 2013 Mat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

@interface ContactSearchController : UITableViewController

@property (weak, nonatomic) NSArray *searchResults;
@property (weak, nonatomic) NSString *searchString;

- (NSArray *) searchContactsByString:(NSString *) string;
@end

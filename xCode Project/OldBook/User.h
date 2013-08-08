//
//  User.h
//  OldBook
//
//  Created by Mat on 7/08/2013.
//  Copyright (c) 2013 Mat. All rights reserved.
//
#import <Parse/Parse.h>
#import "Contact.h"

@interface User : Contact

@property (weak,nonatomic) PFUser *parseUserObject;



@end

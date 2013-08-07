//
//  EmergencyStatus.h
//  OldBook
//
//  Created by Mat on 8/08/2013.
//  Copyright (c) 2013 Mat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmergencyStatus : UIViewController

@property (assign,atomic) NSTimeInterval timeUntilArrival;

- (IBAction)emergencyCancelled:(id)sender;

@end

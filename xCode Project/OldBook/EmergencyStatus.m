//
//  EmergencyStatus.m
//  OldBook
//
//  Created by Mat on 8/08/2013.
//  Copyright (c) 2013 Mat. All rights reserved.
//

#import "EmergencyStatus.h"

@interface EmergencyStatus ()

@end

@implementation EmergencyStatus

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)emergencyCancelled:(id)sender{
    NSLog(@"SEND CANCEL NOTIFICATION");
}
@end

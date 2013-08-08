//
//  LogInViewController.h
//  OldBook
//
//  Created by Mat on 7/08/2013.
//  Copyright (c) 2013 Mat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LogInViewController : UIViewController

@property(nonatomic, weak) IBOutlet UIButton *loginButton;

//The user details to log in
@property(nonatomic, weak) NSString *username;
@property(nonatomic, weak) NSString *password;

//Log In Functions
- (IBAction)logInPressed: (id) logInButton;
- (IBAction)checkLoginValid:(id)sender;

@end

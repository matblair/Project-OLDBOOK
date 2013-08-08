//
//  LogInViewController.m
//  OldBook
//
//  Created by Mat on 7/08/2013.
//  Copyright (c) 2013 Mat. All rights reserved.
//
#import <Parse/Parse.h>
#import "LogInViewController.h"
#import <QuartzCore/QuartzCore.h>
#define LOGINKEY "LOGIN"


@interface LogInViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;

@end

@implementation LogInViewController

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
    [self.loginButton setEnabled:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextFieldDelegate methods
- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    if(textField==self.usernameField){
        [self.passwordField becomeFirstResponder];
    } else {
        [textField resignFirstResponder];
        [self logInPressed:textField];
    }
    return YES;
}


- (IBAction)logInPressed: (id) sender{
    self.password = [self passwordField].text;
    self.username = [self usernameField].text;
    
    if([self.username length]!=0 && [self.password length]!=0){
       PFUser *newUser = [PFUser logInWithUsername:self.username password:self.password];
       if(newUser){
           NSLog(@"Successfully logged in");
       }
    }
    
    if ([self.username length]==0){
        [self.usernameField setPlaceholder:@"Enter username and try again"];
    }
    
    if ([self.password length]==0){
        [self.passwordField setPlaceholder:@"Enter password and try again"];
    }
    
    NSLog(@"I AM finished  WOOOHOOO");

    return;
}
- (IBAction) forgotPassword: (id) forgotPasswordButton{

}

- (IBAction)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
   
}

#pragma mark - UIResponderMethods

@end

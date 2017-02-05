//
//  LoginViewController.m
//  Project You
//
//  Created by Justin Rowe on 2/4/17.
//  Copyright © 2017 Justin Rowe. All rights reserved.
//

#import "LoginViewController.h"
#import "NewUserViewController.h"
#import "AppDelegate.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

@synthesize welcomeString, loginString, userString, forgotString, welcomeLabel, loginLabel, userLabel, forgotLabel, loginButton, usernameField, passwordField, guestString, guestLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Set View Strings
    welcomeString = @"Welcome To Project You.";
    loginString = @"Please Log In To Your Account";
    userString = @"New user?  Click here.";
    guestString = @"Skip login as guest? Click here.";
    
}

- (IBAction)newUser:(id)sender
{
    NewUserViewController * newUserViewController = [[NewUserViewController alloc] init];
    [self presentViewController:newUserViewController animated:YES completion:nil];
}

- (IBAction)skipLogin:(id)sender
{
    [(AppDelegate*)[[UIApplication sharedApplication] delegate] presentMainViewController];
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)done:(id)sender {
    [usernameField resignFirstResponder];
    [passwordField resignFirstResponder];
    
    [self processFieldEntries];
}

-(void)processFieldEntries {
    NSString *username = usernameField.text;
    NSString *password = passwordField.text;
    NSString *noUsernameText = @"username";
    NSString *noPasswordText = @"password";
    NSString *errorText = @"No ";
    NSString *errorTextJoin = @" or ";
    NSString *errorTextEnding = @" entered";
    BOOL textError = NO;
    
    if (username.length == 0 || password.length == 0) {
        textError = YES;
        
        if (password.length == 0) {
            [passwordField becomeFirstResponder];
        }
        if (username.length == 0) {
            [usernameField becomeFirstResponder];
        }
    }
    
    if (username.length == 0) {
        textError = YES;
        errorText = [errorText stringByAppendingString:noUsernameText];
    }
    
    if (password.length == 0) {
        textError = YES;
        if (username.length == 0) {
            errorText = [errorText stringByAppendingString:errorTextJoin];
        }
        errorText = [errorText stringByAppendingString:noPasswordText];
    }
    
    if (textError) {
        errorText = [errorText stringByAppendingString:errorTextEnding];
        UIAlertController *alertView = [UIAlertController alertControllerWithTitle:@"Title" message:errorText preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* okButton = [UIAlertAction
                                   actionWithTitle:@"Ok"
                                   style:UIAlertActionStyleDefault
                                   handler:^(UIAlertAction * action) {
                                       //Handle your ok button action here
                                   }];
        
        [alertView addAction:okButton];
        
        [self presentViewController:alertView animated:YES completion:nil];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end

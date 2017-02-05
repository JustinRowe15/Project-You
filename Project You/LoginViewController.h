//
//  LoginViewController.h
//  Project You
//
//  Created by Justin Rowe on 2/4/17.
//  Copyright © 2017 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, strong) NSManagedObjectContext *context;

@property (strong, nonatomic) NSString *welcomeString;
@property (strong, nonatomic) NSString *loginString;
@property (strong, nonatomic) NSString *userString;
@property (strong, nonatomic) NSString *guestString;
@property (strong, nonatomic) NSString *forgotString;

@property (strong, nonatomic) IBOutlet UILabel *welcomeLabel;
@property (strong, nonatomic) IBOutlet UILabel *loginLabel;
@property (strong, nonatomic) IBOutlet UILabel *forgotLabel;
@property (strong, nonatomic) IBOutlet UILabel *userLabel;
@property (strong, nonatomic) IBOutlet UILabel *guestLabel;
@property (strong, nonatomic) IBOutlet UIButton *loginButton;
@property (strong, nonatomic) IBOutlet UITextField *usernameField;
@property (strong, nonatomic) IBOutlet UITextField *passwordField;

- (IBAction)newUser:(id)sender;
- (IBAction)skipLogin:(id)sender;
- (IBAction)done:(id)sender;

@end

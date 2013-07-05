//
//  FirstViewController.m
//  TestSampe
//
//  This view controller shows how to do validation of strings in TextField
//
//  Created by ShawnHung on 28/06/2013.
//  Copyright (c) 2013 ShawnHung. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Home", @"Home");
        self.tabBarItem.image = [UIImage imageNamed:@"home"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didEndOnExit:(UITextField *)textField {
    [textField resignFirstResponder];
}

- (IBAction)didPressValid:(UIButton *)sender {
    //do validation
    //if password is shorter than 3 letters, alert the user.
    if(self.passwordField.text.length < 3){
        UIAlertView *alertview = [[UIAlertView alloc] initWithTitle:@"Waring" message:@"Password is too short" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alertview show];
        [alertview release];
    }else{
        UIAlertView *alertview = [[UIAlertView alloc] initWithTitle:@"Success" message:@"Validation passed" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alertview show];
        [alertview release];
    }
}

- (IBAction)displayGestureForTapRecognizer:(UITapGestureRecognizer *)sender {
    [self.usernameField resignFirstResponder];
    [self.passwordField resignFirstResponder];
}

- (void)dealloc {
    [_passwordField release];
    [_usernameField release];
    [super dealloc];
}
@end

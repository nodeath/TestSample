//
//  FirstViewController.h
//  TestSampe
//
//  Created by ShawnHung on 28/06/2013.
//  Copyright (c) 2013 ShawnHung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
@property (retain, nonatomic) IBOutlet UITextField *usernameField;
@property (retain, nonatomic) IBOutlet UITextField *passwordField;
- (IBAction)didEndOnExit:(id)sender;
- (IBAction)didPressValid:(UIButton *)sender;
@end

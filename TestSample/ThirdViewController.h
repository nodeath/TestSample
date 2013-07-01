//
//  ThirdViewController.h
//  TestSampe
//
//  Created by ShawnHung on 28/06/2013.
//  Copyright (c) 2013 ShawnHung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController<UIActionSheetDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (retain, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)didPressPickPicture:(UIButton *)sender;
@end

//
//  SecondViewController.h
//  TestSampe
//
//  Created by ShawnHung on 28/06/2013.
//  Copyright (c) 2013 ShawnHung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (retain, nonatomic) IBOutlet UITableView *tableView;
@end

//
//  WebViewController.h
//  TestSampe
//
//  Created by ShawnHung on 28/06/2013.
//  Copyright (c) 2013 ShawnHung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController <UIWebViewDelegate>

@property (retain, nonatomic) IBOutlet UIActivityIndicatorView *activeIndicator;
@property (retain, nonatomic) IBOutlet UIWebView *webView;
@end

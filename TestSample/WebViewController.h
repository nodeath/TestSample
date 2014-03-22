//
//  WebViewController.h
//  TestSampe
//
//  Created by ShawnHung on 28/06/2013.
//  Copyright (c) 2013 ShawnHung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController <UIWebViewDelegate>

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activeIndicator;
@property (strong, nonatomic) IBOutlet UIWebView *webView;

@property (strong,nonatomic) NSURLRequest *request;

@end

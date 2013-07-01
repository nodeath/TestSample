//
//  WebViewController.m
//  TestSampe
//
//  For using UINavigationController, I made this customised WebViewController to be Push into UINavigationController
//
//
//  Created by ShawnHung on 28/06/2013.
//  Copyright (c) 2013 ShawnHung. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

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
    self.navigationItem.title = @"webview";
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_webView release];
    [_activeIndicator release];
    [super dealloc];
}
-(void)webViewDidStartLoad:(UIWebView *)webView{
    [self.activeIndicator startAnimating];
}
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [self.activeIndicator stopAnimating];
}
@end

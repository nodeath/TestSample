//
//  SecondViewController.m
//  TestSampe
//
//  This view controller shows how to load the website into UIWebView
//
//
//  Created by ShawnHung on 28/06/2013.
//  Copyright (c) 2013 ShawnHung. All rights reserved.
//

#import "SecondViewController.h"
#import "WebViewController.h"

@interface SecondViewController ()

@property (nonatomic, strong) NSArray *urlArray;

@end

@implementation SecondViewController

static NSString *tableViewCellIdentifier = @"SecondViewCell";

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Bookmark", @"Bookmark");
        self.tabBarItem.image = [UIImage imageNamed:@"bookmark"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
    //Create a sample list with 10 website url.
    self.urlArray = @[@"http://www.google.com",
                     @"http://australia.gov.au/",
                     @"http://jobsearch.gov.au/",
                     @"http://www.immi.gov.au/living-in-australia/",
                     @"http://www.reuters.com/places/australia",
                     @"http://auspost.com.au/",
                     @"http://www.lonelyplanet.com/australia",
                     @"http://www.ipaustralia.gov.au/",
                     @"http://www.theaustralian.com.au/",
                     @"http://www.ga.gov.au/",
                     @"http://topics.bloomberg.com/australia/"];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //Create every table cell with related url location
    UITableViewCell *tableViewCell = [tableView dequeueReusableCellWithIdentifier:tableViewCellIdentifier];
    if(tableViewCell == nil){
        tableViewCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableViewCellIdentifier];
    }
    
    //Add arrows to all cells
    tableViewCell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    tableViewCell.textLabel.text = [self.urlArray objectAtIndex:indexPath.row];
    
    return tableViewCell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    //Using webview to load the website
    NSString *urlString =[self.urlArray objectAtIndex:indexPath.row];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlString]];
    
    WebViewController *webViewController = [[WebViewController alloc] initWithNibName:@"WebViewController" bundle:nil];
    webViewController.request = request;
    [self.navigationController pushViewController:webViewController animated:YES];
}

@end

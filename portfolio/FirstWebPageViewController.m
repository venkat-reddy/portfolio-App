//
//  FirstWebPageViewController.m
//  portfolio
//
//  Created by Venkat on 9/16/16.
//  Copyright © 2016 iOS Developer. All rights reserved.
//

#import "FirstWebPageViewController.h"
#import "SecondWebPageViewController.h"

@interface FirstWebPageViewController ()
{
    NSString *SelectedLink;
}

@end

@implementation FirstWebPageViewController
@synthesize MainPage;
- (void)viewDidLoad {
    MainPage.delegate= self;
    UIBarButtonItem *BackOptionButton = [[UIBarButtonItem alloc] initWithTitle:@"Go Home" style:UIBarButtonItemStyleDone target:self action:@selector(BackOption:)];
    self.navigationItem.leftBarButtonItem = BackOptionButton;
    SelectedLink = [[NSUserDefaults standardUserDefaults] objectForKey:@"UserSelectedLink"];
    [self NewPage];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    if (navigationType == UIWebViewNavigationTypeLinkClicked)
    {
        NSURL *clickedLink = request.mainDocumentURL;
        SelectedLink = [clickedLink absoluteString];
        //[self NewPage];
        NSLog(@"link clicked = %@",SelectedLink);
        
        
        if ([SelectedLink isEqual: @"https://www.linkedin.com/in/venkat-reddy-954961112?trk=hp-identity-name"]  || [SelectedLink isEqual: @"https://www.facebook.com/venkatyadavally1992"] || [SelectedLink isEqual: @"https://twitter.com/VenkatYedavally"])
        {
            NSLog(@"Came into If condition in LinkedIn, Facebook condition");
            [[UIApplication sharedApplication] openURL:[request URL]];
            
            return NO;
        }
        
        return YES;
        
    }
    
    return YES;
}
- (void) BackOption: (id)sender
{
    [self.navigationController pushViewController:[[self storyboard] instantiateViewControllerWithIdentifier:@"HomePageViewController"] animated:YES];
}



- (void) NewPage
{
    MainPage.delegate = self;
    
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource: SelectedLink ofType:@"html" inDirectory:@"Mobile Portfolio website"]];
    
    
    
    [MainPage loadRequest:[NSURLRequest requestWithURL:url]];
    
    /*
     //this code is made for regular URL opening UIWEBVIEW
    NSURL *url = [NSURL URLWithString: Google];
    //URL Requst Object
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
    //Load the request in the UIWebView.
    [MainPage loadRequest:requestObj];
    MainPage.delegate = self;
     //this code is made for regular URL opening UIWEBVIEW
     */
    
}

   
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

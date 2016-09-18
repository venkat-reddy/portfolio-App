//
//  ViewController.m
//  portfolio
//
//  Created by Venkat on 9/16/16.
//  Copyright © 2016 iOS Developer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)AboutMe:(id)sender {
    NSString *SelectedLink = @"About Me";
    [[NSUserDefaults standardUserDefaults]setObject: SelectedLink forKey:@"UserSelectedLink"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    //[self.navigationController pushViewController:[[self storyboard] instantiateViewControllerWithIdentifier:@"FirstWebPageViewController"] animated:YES];
    NSLog(@"Clicked About Me");
}

- (IBAction)Resume:(id)sender {
    NSString *SelectedLink = @"ResumePage";
    [[NSUserDefaults standardUserDefaults]setObject: SelectedLink forKey:@"UserSelectedLink"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
     //[self.navigationController pushViewController:[[self storyboard] instantiateViewControllerWithIdentifier:@"FirstWebPageViewController"] animated:YES];
    NSLog(@"Clicked Resume");
}

- (IBAction)Education:(id)sender {
    NSString *SelectedLink = @"Education";
    [[NSUserDefaults standardUserDefaults]setObject: SelectedLink forKey:@"UserSelectedLink"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
     //[self.navigationController pushViewController:[[self storyboard] instantiateViewControllerWithIdentifier:@"FirstWebPageViewController"] animated:YES];
    NSLog(@"Clicked Education");
}

- (IBAction)Experience:(id)sender {
    NSString *SelectedLink = @"Experience";
    [[NSUserDefaults standardUserDefaults]setObject: SelectedLink forKey:@"UserSelectedLink"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
     //[self.navigationController pushViewController:[[self storyboard] instantiateViewControllerWithIdentifier:@"FirstWebPageViewController"] animated:YES];
    NSLog(@"Clicked Experience");
}

- (IBAction)ConnectMe:(id)sender {
    NSString *SelectedLink = @"Connect Me";
    [[NSUserDefaults standardUserDefaults]setObject: SelectedLink forKey:@"UserSelectedLink"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
     //[self.navigationController pushViewController:[[self storyboard] instantiateViewControllerWithIdentifier:@"FirstWebPageViewController"] animated:YES];
    NSLog(@"Clicked Connect Me");
}

- (IBAction)Message:(id)sender {
    NSString *SelectedLink = @"message Me";
    [[NSUserDefaults standardUserDefaults]setObject: SelectedLink forKey:@"UserSelectedLink"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
     //[self.navigationController pushViewController:[[self storyboard] instantiateViewControllerWithIdentifier:@"FirstWebPageViewController"] animated:YES];
    NSLog(@"Clicked Message Me");
}
- (IBAction)ProfilePic:(id)sender
{
    NSString *SelectedLink = @"index";
    [[NSUserDefaults standardUserDefaults]setObject: SelectedLink forKey:@"UserSelectedLink"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    //[self.navigationController pushViewController:[[self storyboard] instantiateViewControllerWithIdentifier:@"FirstWebPageViewController"] animated:YES];
    NSLog(@"Clicked Profile Pic");
}
@end

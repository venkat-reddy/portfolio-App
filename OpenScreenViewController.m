//
//  OpenScreenViewController.m
//  portfolio
//
//  Created by Venkat on 9/19/16.
//  Copyright © 2016 iOS Developer. All rights reserved.
//

#import "OpenScreenViewController.h"

@interface OpenScreenViewController ()

@end

@implementation OpenScreenViewController
@synthesize animatedGif, WelcomeLabel,DetailsLabel;
- (void)viewDidLoad {
    [super viewDidLoad];
    [WelcomeLabel setHidden:YES];
    [DetailsLabel setHidden:YES];
    // Do any additional setup after loading the view, typically from a nib.
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"NewHello1" withExtension:@"gif"];
    //self.dataImageView.image = [UIImage animatedImageWithAnimatedGIFData:[NSData dataWithContentsOfURL:url]];
    self.animatedGif.image = [UIImage animatedImageWithAnimatedGIFURL:url];
    //[self performSelector:@selector(testFunc) withObject:nil afterDelay:2.0];
    
    [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(AnimationOfText) userInfo:nil repeats:NO];
    
    
    
}
- (NSUInteger) supportedInterfaceOrientations {
    // Return a bitmask of supported orientations. If you need more,
    // use bitwise or (see the commented return).
    NSUInteger valueForRturn;
    if ( UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad )
    {
        valueForRturn = UIInterfaceOrientationMaskAll;
    }
    else
    {
        valueForRturn = UIInterfaceOrientationMaskPortrait;
    }
    
    return valueForRturn;
    // return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskPortraitUpsideDown;
}
/*
 - (UIInterfaceOrientation) preferredInterfaceOrientationForPresentation {
 // Return the orientation you'd prefer - this is what it launches to. The
 // user can still rotate. You don't have to implement this method, in which
 // case it launches in the current orientation
 if ( UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad )
 {
 return UIInterfaceOrientationPortrait;
 }
 else{
 return UIInterfaceOrientationMaskAll;
 }
 }
 */

- (void) AnimationOfText {
    NSLog(@"Came in to Animation of Text");
    [WelcomeLabel setHidden:NO];
    [DetailsLabel setHidden:NO];
     [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(testFunc) userInfo:nil repeats:NO];
}
- (void) testFunc {
    NSLog(@"Came in to testFunc");
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    [self presentModalViewController:[storyboard instantiateViewControllerWithIdentifier:@"HomePageViewController"] animated:NO];
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

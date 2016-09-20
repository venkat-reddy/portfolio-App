//
//  FirstWebPageViewController.h
//  portfolio
//
//  Created by Venkat on 9/16/16.
//  Copyright © 2016 iOS Developer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondWebPageViewController.h"
#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import "ViewController.h"

@interface FirstWebPageViewController : UIViewController <UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UIWebView *MainPage;

@end

//
//  OpenScreenViewController.h
//  portfolio
//
//  Created by Venkat on 9/19/16.
//  Copyright © 2016 iOS Developer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImage+animatedGIF.h"
#import "ViewController.h"

@interface OpenScreenViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *animatedGif;
@property (strong, nonatomic) IBOutlet UILabel *WelcomeLabel;
@property (strong, nonatomic) IBOutlet UILabel *DetailsLabel;

@end

//
//  ViewController.h
//  portfolio
//
//  Created by Venkat on 9/16/16.
//  Copyright © 2016 iOS Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *AboutMe;
@property (strong, nonatomic) IBOutlet UIButton *Resume;
@property (strong, nonatomic) IBOutlet UIButton *Education;
@property (strong, nonatomic) IBOutlet UIButton *Experience;
@property (strong, nonatomic) IBOutlet UIButton *ConnectMe;
@property (strong, nonatomic) IBOutlet UIButton *Message;
@property (strong, nonatomic) IBOutlet UIButton *ProfilePic;
- (IBAction)AboutMe:(id)sender;
- (IBAction)Resume:(id)sender;
- (IBAction)Education:(id)sender;
- (IBAction)Experience:(id)sender;
- (IBAction)ConnectMe:(id)sender;
- (IBAction)Message:(id)sender;
- (IBAction)ProfilePic:(id)sender;

@end


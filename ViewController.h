//
//  ViewController.h
//  ColorView
//
//  Created by kefgeapp on 08.11.2012.
//  Copyright (c) 2012 kefgeapp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Circle.h"
@interface ViewController : UIViewController
@property (nonatomic, strong) IBOutlet Circle *circle;
- (IBAction)redChanged:(UISlider *)sender;
- (IBAction)greenChanged:(UISlider *)sender;
- (IBAction)blueChanged:(UISlider *)sender;
- (IBAction)alphaChanged:(UISlider *)sender;
@end
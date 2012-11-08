//
//  ViewController.m
//  ColorView
//
//  Created by kefgeapp on 08.11.2012.
//  Copyright (c) 2012 kefgeapp. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()
@end
@implementation ViewController
@synthesize circle;
- (Circle *)circle
{
    if (!circle) {
        circle = [[Circle alloc] init];
    }
    return circle;
}
- (IBAction)redChanged:(UISlider *)sender
{
    self.circle.redValue = sender.value;
    [self.circle setNeedsDisplay];
}
- (IBAction)greenChanged:(UISlider *)sender
{
    self.circle.greenValue = sender.value;
    [self.circle setNeedsDisplay];
}
- (IBAction)blueChanged:(UISlider *)sender
{
    self.circle.blueValue = sender.value;
    [self.circle setNeedsDisplay];
}
- (IBAction)alphaChanged:(UISlider *)sender
{
    self.circle.alpha = sender.value;
    [self.circle setNeedsDisplay];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.circle.redValue =
    self.circle.greenValue =
    self.circle.blueValue = (CGFloat)0;
    self.circle.alpha = (CGFloat)1;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
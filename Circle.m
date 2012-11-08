//
//  Circle.m
//  ColorView
//
//  Created by kefgeapp on 08.11.2012.
//  Copyright (c) 2012 kefgeapp. All rights reserved.
//

#import "Circle.h"

@implementation Circle

@synthesize redValue, greenValue, blueValue, alpha;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor(context, self.redValue,
                             self.greenValue,
                             self.blueValue,
                             self.alpha);
    CGContextFillEllipseInRect(context, rect);
    CGContextFillPath(context);
}
@end

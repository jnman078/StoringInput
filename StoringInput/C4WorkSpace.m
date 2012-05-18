//
//  C4WorkSpace.m
//  StoringInput
//
//  Created by Jordan Peterson on 12-05-14.
//  Copyright (c) 2012 ACAD. All rights reserved.
//

#import "MyFader.h"
#import "C4WorkSpace.h"

@implementation C4WorkSpace {
//    C4Shape *circle;
    MyFader *circle;
    CGPoint touchPoint;
    float orbDiameter;
}

-(void)setup {
    self.canvas.backgroundColor = [UIColor darkGrayColor];
    orbDiameter = 150.0f;
    self.canvas.multipleTouchEnabled = YES;
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    touchPoint = [[touches anyObject] locationInView:self.canvas];
    
    // With C4Shape
//    circle = [C4Shape new];
//    [circle ellipse:CGRectMake(touchPoint.x - orbDiameter/2.0f, touchPoint.y - orbDiameter/2.0f, orbDiameter, orbDiameter)];
    
    // With MyFader class
    circle = [[MyFader alloc] initWithFrame:CGRectMake(touchPoint.x - orbDiameter/2.0f, touchPoint.y - orbDiameter/2.0f, orbDiameter, orbDiameter)];
    [circle ellipse:circle.frame];
    
    circle.fillColor = [UIColor colorWithHue:0.75f saturation:1.0f brightness:0.5f alpha:0.75f];
    circle.strokeColor = [UIColor clearColor];
    [self.canvas addShape:circle];
}

@end

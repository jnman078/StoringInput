//
//  MyFader.m
//  StoringInput
//
//  Created by Jordan Peterson on 12-05-15.
//  Copyright (c) 2012 ACAD. All rights reserved.
//

#import "MyFader.h"

@implementation MyFader

-(id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self != nil) {
        self.animationDuration = 0.0f;
        self.fillColor = [UIColor yellowColor];
        self.strokeColor = [UIColor clearColor];
    }
    return self;
}

-(void)ellipse:(CGRect)rect {
    [super ellipse:rect];
    [self performSelector:@selector(render) withObject:nil afterDelay:1.0f];
}

-(void)render {
    self.animationDuration = 5.0f;
    self.strokeColor = [UIColor clearColor];
    self.fillColor = [UIColor clearColor];
    self.transform = CGAffineTransformMakeScale(0.1f, 0.1f);
    [self performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:5.05f];
}

@end

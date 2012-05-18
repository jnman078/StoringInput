//
//  MyFader.h
//  StoringInput
//
//  Created by Jordan Peterson on 12-05-15.
//  Copyright (c) 2012 ACAD. All rights reserved.
//

#import "C4Object.h"

@interface MyFader : C4Shape

-(id)initWithFrame:(CGRect)frame;
-(void)ellipse:(CGRect)rect;
-(void)render;

@end

//
//  Line.m
//  FingerPaintApp
//
//  Created by Wiljay Flores on 2018-08-10.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "Line.h"
#import "LinePoint.h"


@implementation Line

- (instancetype)initWithColor:(UIColor *)color {
    if (self = [super init]) {
        _color = color ? color : [UIColor blackColor];
        self.linePoints = [@[] mutableCopy];
    }
    return self;
}

@end

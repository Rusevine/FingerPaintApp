//
//  LinePoint.m
//  FingerPaintApp
//
//  Created by Wiljay Flores on 2018-08-10.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "LinePoint.h"

@implementation LinePoint

- (instancetype)initWithPoint:(CGPoint)point {
    if (self = [super init]) {
        _point = point;
    }
    return self;
}

@end

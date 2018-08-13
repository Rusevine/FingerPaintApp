//
//  Canvas.m
//  FingerPaintApp
//
//  Created by Wiljay Flores on 2018-08-10.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "Canvas.h"
#import "LinePoint.h"
#import "Line.h"

@interface Canvas ()

@property (nonatomic) NSMutableArray <Line*>*lines;
@property (nonatomic) NSMutableArray <UIBezierPath*> *pathArray;

@end

@implementation Canvas

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        
    }
    return self;
}

- (instancetype)init {
    if (self = [super init]) {
        _lines = [@[] mutableCopy];
        _pathArray = [@[] mutableCopy];
        self.backgroundColor = [UIColor whiteColor];
        _activeColor = [UIColor blackColor];
    }
    return self;
}



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = touches.anyObject;
    CGPoint locationInView = [touch locationInView:self];
    Line *line = [[Line alloc] initWithColor:[UIColor blackColor]];
    [self.lines addObject:line];
    LinePoint *linePoint = [[LinePoint alloc] initWithPoint:locationInView];
    [line.linePoints addObject:linePoint];
    [self setNeedsDisplay];
    
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = touches.anyObject;
    CGPoint locationInView = [touch locationInView:self];
    NSLog(@"it works");
    LinePoint *linePoint = [[LinePoint alloc] initWithPoint:locationInView];
    Line *currentLine = self.lines.lastObject;
    [currentLine.linePoints addObject:linePoint];
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    
   
    UIBezierPath *path1 = [[UIBezierPath alloc] init];
    UIBezierPath *path2 = [[UIBezierPath alloc] init];
    [self.pathArray addObject:path1];
    [self.pathArray addObject:path2];
    
    
    
    for (UIBezierPath *path in self.pathArray) {
    path.lineWidth = 5;
    path.lineCapStyle = kCGLineCapRound;
     for (Line *line in self.lines) {
        for (LinePoint *linePoint in line.linePoints) {
            if (linePoint == line.linePoints.firstObject) {
                [path moveToPoint:linePoint.point];
                continue;
            }
            [path addLineToPoint:linePoint.point];
        }
            [path stroke];
        }
    }
}
   





@end

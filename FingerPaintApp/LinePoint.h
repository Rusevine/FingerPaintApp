//
//  LinePoint.h
//  FingerPaintApp
//
//  Created by Wiljay Flores on 2018-08-10.
//  Copyright © 2018 wiljay. All rights reserved.
//

@import UIKit;

@interface LinePoint : NSObject

@property (nonatomic, readonly)CGPoint point;

- (instancetype)initWithPoint:(CGPoint)point;

@end

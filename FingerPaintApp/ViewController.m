//
//  ViewController.m
//  FingerPaintApp
//
//  Created by Wiljay Flores on 2018-08-10.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "ViewController.h"
#import "Canvas.h"

@interface ViewController () 

@property (nonatomic) UIButton *red;
@property (nonatomic) UIButton *green;
@property (nonatomic) Canvas *canvas;

@end

@implementation ViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
         _canvas = [[Canvas alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.canvas];
    self.canvas.translatesAutoresizingMaskIntoConstraints = NO;
    
    _red = [[UIButton alloc] initWithFrame:(CGRectMake(0, 0, 50, 50))];
    self.red.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.red];
    [self.red addTarget:self action:@selector(changeColor:) forControlEvents: UIControlEventTouchUpInside];
    
    

}

- (void)viewDidLayoutSubviews {
    [NSLayoutConstraint constraintWithItem:self.canvas attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeWidth multiplier:0.90 constant:0].active = YES;
    
    [NSLayoutConstraint constraintWithItem:self.canvas attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeHeight multiplier:0.80 constant:0].active = YES;
    
    [NSLayoutConstraint constraintWithItem:self.canvas attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0].active = YES;
    
    [NSLayoutConstraint constraintWithItem:self.canvas attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0].active = YES;
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)changeColor:(UIButton*)sender{
    self.canvas.activeColor = sender.backgroundColor;
}




@end

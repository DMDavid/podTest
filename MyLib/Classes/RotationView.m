//
//  RotationView.m
//  RotationAnimation
//
//  Created by APPLE on 17/1/19.
//  Copyright © 2017年 APPLE. All rights reserved.
//

#import "RotationView.h"

#define BALL_RADIUS 30.0
#define HEIGHT self.frame.size.height
#define WIDTH self.frame.size.width

@interface RotationView()

@property (nonatomic, strong) UIColor *ballColor;
@property (nonatomic, strong) UIView *ball_1;
@property (nonatomic, strong) UIView *ball_2;
@property (nonatomic, strong) UIView *ball_3;

@end


@implementation RotationView


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
        CGFloat centerPointY = HEIGHT/2 - BALL_RADIUS*0.5;
        CGFloat centerPointX = WIDTH / 2;
        CGPoint centerPoint = CGPointMake(centerPointX, centerPointY);
        UIView *ball_1 = [[UIView alloc] initWithFrame:CGRectMake(centerPoint.x - BALL_RADIUS, centerPoint.y, BALL_RADIUS, BALL_RADIUS)];
        ball_1.layer.cornerRadius = BALL_RADIUS / 2; // 成为圆形
        ball_1.backgroundColor = self.ballColor;
        [self addSubview:ball_1];
        self.ball_1 = ball_1;
        
        UIView *ball_2 = [[UIView alloc] initWithFrame:CGRectMake(centerPoint.x - BALL_RADIUS * 0.5, centerPoint.y, BALL_RADIUS, BALL_RADIUS)];
        ball_2.layer.cornerRadius = BALL_RADIUS / 2; // 成为圆形
        ball_2.backgroundColor = self.ballColor;
        [self addSubview:ball_2];
        self.ball_2 = ball_2;
        
        UIView *ball_3 = [[UIView alloc] initWithFrame:CGRectMake(centerPoint.x + BALL_RADIUS * 0.5, centerPoint.y, BALL_RADIUS, BALL_RADIUS)];
        ball_3.layer.cornerRadius = BALL_RADIUS / 2; // 成为圆形
        ball_3.backgroundColor = self.ballColor;
        [self addSubview:ball_3];
        self.ball_3 = ball_3;
        
        
        
    }
    return self;
}


@end

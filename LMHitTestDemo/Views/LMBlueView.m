//
//  LMBlueView.m
//  LMHitTestDemo
//
//  Created by Li Ming  on 2017/4/7.
//  Copyright © 2017年 Lyman. All rights reserved.
//

#import "LMBlueView.h"

@implementation LMBlueView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor blueColor];
    }
    return self;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    UIView *view = [super hitTest:point withEvent:event];
    NSLog(@"%@--hitTest,view = %@",NSStringFromClass([self class]),view);
    return view;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    BOOL result = [super pointInside:point withEvent:event];
    NSLog(@"%@--pointInside,result = %d",NSStringFromClass([self class]),result);
    return result;
}

@end

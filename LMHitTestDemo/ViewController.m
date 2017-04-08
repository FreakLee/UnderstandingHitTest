//
//  ViewController.m
//  LMHitTestDemo
//
//  Created by Li Ming  on 2017/4/7.
//  Copyright © 2017年 Lyman. All rights reserved.
//

#import "ViewController.h"
#import "LMRedView.h"
#import "LMGreenView.h"
#import "LMBlueView.h"

@interface ViewController ()

@property (nonatomic, weak) LMRedView   *redView;
@property (nonatomic, weak) LMGreenView *greenView;
@property (nonatomic, weak) LMBlueView  *blueView;

@end

@implementation ViewController

- (LMRedView *)redView {
    if (_redView == nil) {
        LMRedView *view =  [[LMRedView alloc] initWithFrame:CGRectMake(0, 20, 240, 240)];
        [self.view addSubview:view];
        _redView = view;
    }
    return _redView;
}

- (LMGreenView *)greenView {
    if (_greenView == nil) {
        LMGreenView *view =  [[LMGreenView alloc] initWithFrame:CGRectMake(40, 40, 160, 160)];
        [self.redView addSubview:view];
        _greenView = view;
    }
    return _greenView;
}

- (LMBlueView *)blueView {
    if (_blueView == nil) {
        LMBlueView *view =  [[LMBlueView alloc] initWithFrame:CGRectMake(80, 80, 80, 80)];
        [self.redView addSubview:view];
        _blueView = view;
    }
    return _blueView;
}

- (void)addTapGestureRecognizerForSubViews {
    
    UITapGestureRecognizer *tapRed = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapRedView)];
    [self.redView addGestureRecognizer:tapRed];
    
    UITapGestureRecognizer *tapGreen = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGreenView)];
    [self.greenView addGestureRecognizer:tapGreen];
    
    UITapGestureRecognizer *tapBlue = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapBlueView)];
    [self.blueView addGestureRecognizer:tapBlue];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self addTapGestureRecognizerForSubViews];
    
    //[self testHidden];
    [self testUserInteraction];
    //[self testAlpha];
    //[self testExtends];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma - TapGesture
- (void)tapRedView {
    NSLog(@"tapped redView");
}

- (void)tapGreenView {
    NSLog(@"tapped greenView");
}

- (void)tapBlueView {
    NSLog(@"tapped blueView");
}

#pragma - Test
- (void)testHidden {
    self.blueView.hidden = YES;
}

- (void)testUserInteraction {
    self.blueView.userInteractionEnabled = NO;
}

- (void)testAlpha {
    self.blueView.alpha = 0.00999;
}

- (void)testExtends {
    self.blueView.frame = CGRectMake(200, 200, 80, 80);
}

@end

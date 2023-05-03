//
//  XWViewController.m
//  XWScrollRulerView
//
//  Created by MartinChristopher on 11/25/2022.
//  Copyright (c) 2022 MartinChristopher. All rights reserved.
//

#import "XWViewController.h"
#import <XWScrollRulerView.h>

@interface XWViewController ()

@end

@implementation XWViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel * showLabel = [[UILabel alloc] init];
    showLabel.frame = CGRectMake((self.view.bounds.size.width - 120)/2.0, 100, 120, 24);
    showLabel.backgroundColor = [UIColor clearColor];
    showLabel.font = [UIFont systemFontOfSize:16.0];
    showLabel.textColor = [UIColor brownColor];
    showLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:showLabel];
    
    XWScrollRulerView *aview = [[XWScrollRulerView alloc] initWithFrame:CGRectMake(0, 150, self.view.bounds.size.width, 70) minValue:30 maxValue:180 initialValue:200];
    aview.rulerColor = [UIColor colorWithWhite:0.0 alpha:0.5];
    aview.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:aview];
    aview.currentValueChanged = ^(float value) {
        showLabel.text = [NSString stringWithFormat:@"%d",(int)value];
    };
}

@end

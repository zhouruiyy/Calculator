//
//  ViewController.m
//  Calculator
//
//  Created by Zhou,Rui(ART) on 2020/3/19.
//  Copyright © 2020 Zhou,Rui(ART). All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Calculator.h"
#import "CalculatorMaker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    int result = [NSObject makeCalculators:^(CalculatorMaker * _Nonnull maker) {
        maker.add(1).sub(2);
        maker.block(1);
    }];
    
    NSLog(@"result : %d", result);
}


@end

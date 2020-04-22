//
//  NSObject+Calculator.m
//  Calculator
//
//  Created by Zhou,Rui(ART) on 2020/3/19.
//  Copyright © 2020 Zhou,Rui(ART). All rights reserved.
//

#import "NSObject+Calculator.h"
#import "CalculatorMaker.h"

@implementation NSObject (Calculator)

+ (int)makeCalculators:(void (^)(CalculatorMaker * _Nonnull))block {
    CalculatorMaker *maker = [[CalculatorMaker alloc] init];
    block(maker);
    
    return maker.result;
}

@end

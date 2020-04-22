//
//  CalculatorMaker.m
//  Calculator
//
//  Created by Zhou,Rui(ART) on 2020/3/19.
//  Copyright © 2020 Zhou,Rui(ART). All rights reserved.
//

#import "CalculatorMaker.h"

@implementation CalculatorMaker

- (CalculatorMaker * _Nonnull (^)(int))add {
    return ^CalculatorMaker *(int value) {
        self.result += value;
        return self;
    };
}

- (CalculatorMaker * _Nonnull (^)(int))sub {
    return ^(int value) {
        self.result -= value;
        return self;
    };
}

- (CalculatorMaker * _Nonnull (^)(int))multiply {
    return ^(int value) {
        self.result *= value;
        return self;
    };
}

- (CalculatorMaker * _Nonnull (^)(int))divide {
    return ^CalculatorMaker *(int value) {
        if (value != 0) {
            self.result /= value;
        }
        return self;
    };
}


@end

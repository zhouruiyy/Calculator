//
//  NSObject+Calculator.h
//  Calculator
//
//  Created by Zhou,Rui(ART) on 2020/3/19.
//  Copyright © 2020 Zhou,Rui(ART). All rights reserved.
//


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class CalculatorMaker;

@interface NSObject (Calculator)

+ (int)makeCalculators:(void (^)(CalculatorMaker *))block;

@end

NS_ASSUME_NONNULL_END

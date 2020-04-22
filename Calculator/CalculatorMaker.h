//
//  CalculatorMaker.h
//  Calculator
//
//  Created by Zhou,Rui(ART) on 2020/3/19.
//  Copyright © 2020 Zhou,Rui(ART). All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CalculatorMaker : NSObject

@property (nonatomic, assign) int result;
@property (nonatomic, copy) CalculatorMaker *(^block)(int);

- (CalculatorMaker *(^)(int))add;
- (CalculatorMaker *(^)(int))sub;
- (CalculatorMaker *(^)(int))multiply;
- (CalculatorMaker *(^)(int))divide;


@end

NS_ASSUME_NONNULL_END

//
//  Dice.m
//  Three Low 2
//
//  Created by Chelsea Liu on 6/16/15.
//  Copyright (c) 2015 Chelsea Liu. All rights reserved.
//

#import "Dice.h"


@implementation Dice


- (instancetype)init
{
    self = [super init];
    if (self) {
//        _game = [[Game alloc] init];
        _dice1 = [[Dice alloc] init];
        _dice2 = [[Dice alloc] init];
        _dice3 = [[Dice alloc] init];
        _dice4 = [[Dice alloc] init];
        _dice5 = [[Dice alloc] init];
        
    }
    return self;
}

//
//
//-(BOOL)isHeld: (Dice*) dice {
//    for (int i = 0; i < _game.diceArray.count; i++) {
//        if (_game.diceArray [i] == dice) {
//            return true;
//        }
//    }
//    return false;
//}
//



@end

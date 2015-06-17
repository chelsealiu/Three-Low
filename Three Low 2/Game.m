//
//  Game.m
//  Three Low 2
//
//  Created by Chelsea Liu on 6/16/15.
//  Copyright (c) 2015 Chelsea Liu. All rights reserved.
//

#import "Game.h"
#import "Dice.h"


@implementation Game



- (instancetype)init
{
    self = [super init];
    if (self) {
        _diceArray = [[NSMutableArray alloc] init];
     
    }
    return self;
}

- (BOOL) isHeld : (Dice *) dice {
    if ([_diceArray indexOfObject:dice] != -1) {
        return true;
    } return false;
}




@end

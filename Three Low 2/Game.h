//
//  Game.h
//  Three Low 2
//
//  Created by Chelsea Liu on 6/16/15.
//  Copyright (c) 2015 Chelsea Liu. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Dice;

@interface Game : NSObject


@property (nonatomic, strong) NSMutableArray *diceArray;
@property (nonatomic) Dice *dice;

- (BOOL) isHeld: (Dice*) dice;

@end

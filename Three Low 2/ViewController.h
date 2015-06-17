//
//  ViewController.h
//  Three Low 2
//
//  Created by Chelsea Liu on 6/16/15.
//  Copyright (c) 2015 Chelsea Liu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Game.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *dice1;
@property (weak, nonatomic) IBOutlet UIButton *dice2;
@property (weak, nonatomic) IBOutlet UIButton *dice3;
@property (weak, nonatomic) IBOutlet UIButton *dice4;
@property (weak, nonatomic) IBOutlet UIButton *dice5;
@property (strong, nonatomic) NSMutableArray *diceArray;
@property (strong, nonatomic) Game *game;
@property (strong, nonatomic) Dice *dice;

@property (nonatomic) int score; 

@property(nonatomic) BOOL isHeld;



//@property (nonatomic) bool isHeld;
//nil by default

- (void) randomRoll: (UIButton *) dice;
- (BOOL) isHeld : (UIButton *) dice;



@end


//
//  ViewController.m
//  Three Low 2
//
//  Created by Chelsea Liu on 6/16/15.
//  Copyright (c) 2015 Chelsea Liu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    _game = [[Game alloc] init];
    _diceArray = [[NSMutableArray alloc] init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)rollDice:(id)sender {
    
    if ([self isHeld:_dice1] == NO) {
        [self randomRoll: _dice1];
    } if ([self isHeld:_dice2] == NO) {
        [self randomRoll: _dice2];
    }if ([self isHeld:_dice3] == NO) {
        [self randomRoll: _dice3];
    }if ([self isHeld:_dice4] == NO) {
        [self randomRoll: _dice4];
    }if ([self isHeld:_dice5] == NO) {
        [self randomRoll: _dice5];
    }
}

- (IBAction)resetDice:(id)sender {
    
    [_diceArray removeAllObjects];
    
    [_dice1 setTitleColor: [UIColor cyanColor] forState:UIControlStateNormal];
    [_dice2 setTitleColor: [UIColor cyanColor] forState:UIControlStateNormal];
    [_dice3 setTitleColor: [UIColor cyanColor] forState:UIControlStateNormal];
    [_dice4 setTitleColor: [UIColor cyanColor] forState:UIControlStateNormal];
    [_dice5 setTitleColor: [UIColor cyanColor] forState:UIControlStateNormal];

    [_dice1 setTitle:@"⚀" forState: UIControlStateNormal];
    [_dice2 setTitle:@"⚁" forState: UIControlStateNormal];
    [_dice3 setTitle:@"⚂" forState: UIControlStateNormal];
    [_dice4 setTitle:@"⚃" forState: UIControlStateNormal];
    [_dice5 setTitle:@"⚄" forState: UIControlStateNormal];

}

- (IBAction)holdDice:(id)sender {
    
    [_diceArray addObject:sender];
    [sender setTitleColor: [UIColor magentaColor] forState:UIControlStateNormal];
    
    
    
    
    
    
    NSLog(@"%@", _diceArray);

}

- (void) randomRoll: (UIButton *) dice {
    
    int diceRoll = arc4random_uniform(6);
    
    if (diceRoll == 0) {
        [dice setTitle:@"⚀" forState: UIControlStateNormal];
    } else if (diceRoll == 1) {
        [dice setTitle:@"⚁" forState:UIControlStateNormal];
    } else if (diceRoll == 2) {
        [dice setTitle:@"⚂" forState:UIControlStateNormal];
    } else if (diceRoll == 3) {
        [dice setTitle:@"⚃" forState:UIControlStateNormal];
    } else if (diceRoll == 4) {
        [dice setTitle:@"⚄" forState:UIControlStateNormal];
    }     else {
        [dice setTitle:@"⚅" forState:UIControlStateNormal];
    }
}

- (BOOL) isHeld : (UIButton *) dice {
    if ([_diceArray indexOfObject:dice] != NSNotFound) {
        return true;
    } return false;
}





@end

//
//  ViewController.m
//  course0
//
//  Created by Jhihguan on 13/8/5.
//  Copyright (c) 2013年 Jhihguan. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@end

@implementation ViewController
- (IBAction)selectedCard:(UIButton *)sender {
//    sender.selected = !sender.isSelected;
    if (!sender.isSelected) {
        sender.layer.borderWidth = 3.0;
        sender.layer.borderColor = [UIColor colorWithRed:1.0 green:0.2 blue:0.2 alpha:1].CGColor;
    }else{
        sender.layer.borderWidth = 0.0;
    }
    sender.selected = !sender.isSelected;
}

- (IBAction)changeButtonText:(UIButton *)sender {
    
    for (int i=0; i<_cardButtons.count; i++) {
        UIButton *tempCard = _cardButtons[i];
        if (!tempCard.isSelected) {
            if ([tempCard.currentTitle isEqualToString:@"Button"]) {
                [tempCard setTitle:@"Show" forState:UIControlStateNormal];
            }else{
                [tempCard setTitle:@"Button" forState:UIControlStateNormal];
            }
        }
    }
    
    sender.selected = !sender.isSelected;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

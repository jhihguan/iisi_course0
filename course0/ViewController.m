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
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
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
    if (!sender.isSelected) {
        if (!_button1.isSelected) {
            [_button1 setTitle:@"Show1" forState:UIControlStateNormal];
        }
        if (!_button2.isSelected) {
            [_button2 setTitle:@"Show2" forState:UIControlStateNormal];
        }
        if (!_button3.isSelected) {
            [_button3 setTitle:@"Show3" forState:UIControlStateNormal];
        }
    }else{
        if (!_button1.isSelected) {
            [_button1 setTitle:@"Button1" forState:UIControlStateNormal];
        }
        if (!_button2.isSelected) {
            [_button2 setTitle:@"Button2" forState:UIControlStateNormal];
        }
        if (!_button3.isSelected) {
            [_button3 setTitle:@"Button3" forState:UIControlStateNormal];
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

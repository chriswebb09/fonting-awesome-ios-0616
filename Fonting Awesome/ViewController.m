//
//  ViewController.m
//  Fonting Awesome
//
//  Created by Christopher Webb-Orenstein on 6/29/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

#import "ViewController.h"
#import "FontAwesomeKit/FontAwesomeKit.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *fontButton;

@end

@implementation ViewController
- (IBAction)fontButtonTapped:(id)sender {
}


- (void)viewDidLoad {
    [super viewDidLoad];
    FAKFontAwesome *starIcon = [FAKFontAwesome starIconWithSize:40];
    NSAttributedString *star = [starIcon attributedString];
    
    [self.fontButton setAttributedTitle:star forState:UIControlStateNormal];
    //NSString *starString = [NSString stringWithFormat:@"%@", starString];
    //self.fontButton.titleLabel.attributedText = star;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

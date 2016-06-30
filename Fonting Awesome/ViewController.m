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
@property (strong, nonatomic) NSMutableArray *iconArray;
@property (nonatomic) NSUInteger index;

@end

@implementation ViewController
- (IBAction)fontButtonTapped:(id)sender {
    
    if (self.index < self.iconArray.count) {
        NSAttributedString *labelIcon = [self.iconArray[self.index] attributedString];
        [self.fontButton setAttributedTitle:labelIcon forState:UIControlStateNormal];
        self.index += 1;
    } else {
        self.index = 0;
        NSAttributedString *labelIcon = [self.iconArray[self.index] attributedString];
        [self.fontButton setAttributedTitle:labelIcon forState:UIControlStateNormal];
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    FAKFontAwesome *starIcon = [FAKFontAwesome starIconWithSize:40];
    FAKFontAwesome *check = [FAKFontAwesome wonIconWithSize:40];
    FAKFontAwesome *mail = [FAKFontAwesome mailReplyAllIconWithSize:40];
    FAKFontAwesome *git = [FAKFontAwesome gitIconWithSize:40];
    self.iconArray = [[NSMutableArray alloc]init];
    [self.iconArray addObject:starIcon];
    [self.iconArray addObject:check];
    [self.iconArray addObject:mail];
    [self.iconArray addObject:git];
    self.index = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

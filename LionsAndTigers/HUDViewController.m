//
//  HUDViewController.m
//  LionsAndTigers
//
//  Created by Yi-Chin Sun on 1/15/15.
//  Copyright (c) 2015 Yi-Chin Sun. All rights reserved.
//

#import "HUDViewController.h"

@interface HUDViewController ()

@end

@implementation HUDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)lionsButtonTapped
{

}
-(void)tigersButtonTapped
{

}

- (IBAction)onLionsButtonTapped:(id)sender
{
    [self.delegate lionsButtonTapped];
}

- (IBAction)onTigersButtonTapped:(id)sender
{
    [self.delegate tigersButtonTapped];
}

@end

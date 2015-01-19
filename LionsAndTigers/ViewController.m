//
//  ViewController.m
//  LionsAndTigers
//
//  Created by Yi-Chin Sun on 1/15/15.
//  Copyright (c) 2015 Yi-Chin Sun. All rights reserved.
//

#import "ViewController.h"
#import "TopViewController.h"
#import "HUDViewController.h"

@interface ViewController ()<TopDelegate, HUDDelegate>
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *leftConstraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *rightConstraint;
@property (strong, nonatomic) IBOutlet UIView *topViewContainer;

@property TopViewController *tvc;
@property HUDViewController *hvc;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tvc.delegate = self;
    self.hvc.delegate = self;
}

-(void)lionsButtonTapped
{
    self.tvc.currentImageArray = self.tvc.lionImageArray;
    [self.tvc.collectionView reloadData];
}

-(void)tigersButtonTapped
{
    self.tvc.currentImageArray = self.tvc.tigerImageArray;
    [self.tvc.collectionView reloadData];
}

-(void)topRevealButtonTapped
{
    [UIView animateWithDuration:0.5
                          delay:0.0
                        options: 0
                     animations:^{
                         if ([self.leftConstraint constant] == -16.0)
                         {
                             [self.leftConstraint setConstant:100.0];
                             [self.rightConstraint setConstant:-116.0];
                         }
                         else
                         {
                             [self.leftConstraint setConstant:-16.0];
                             [self.rightConstraint setConstant:-16.0];
                         }
                              [self.view layoutIfNeeded];
                     }
                     completion:^(BOOL finished){
                     }];
}

-(void)panGesture:(UIGestureRecognizer *)gesture
{

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{


    if ([segue.identifier isEqualToString:@"navigationSegue"])
    {
        //Since segue actually goes to the navigation controller, need to get view controller from it
        UINavigationController *navControl = segue.destinationViewController;
        self.tvc = [navControl.viewControllers objectAtIndex:0];
    }
    else if ([segue.identifier isEqualToString:@"HUDSegue"])
    {
        self.hvc = segue.destinationViewController;
    }
}


@end

//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Yi-Chin Sun on 1/15/15.
//  Copyright (c) 2015 Yi-Chin Sun. All rights reserved.
//

#import "TopViewController.h"
#import "ImageCollectionViewCell.h"
#import "HUDViewController.h"

@interface TopViewController () <HUDDelegate, UICollectionViewDelegate, UICollectionViewDataSource>

@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@property NSMutableArray *currentImageArray;
@property NSMutableArray *lionImageArray;
@property NSMutableArray *tigerImageArray;

@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.lionImageArray = [NSMutableArray new];
    [self.lionImageArray addObject:[UIImage imageNamed:@"lion_1"]];
    [self.lionImageArray addObject:[UIImage imageNamed:@"lion_2"]];
    [self.lionImageArray addObject:[UIImage imageNamed:@"lion_3"]];

    self.tigerImageArray = [NSMutableArray new];
    [self.tigerImageArray addObject:[UIImage imageNamed:@"tiger_1"]];
    [self.tigerImageArray addObject:[UIImage imageNamed:@"tiger_2"]];
    [self.tigerImageArray addObject:[UIImage imageNamed:@"tiger_3"]];

    self.currentImageArray = self.lionImageArray;
}

- (void) topRevealButtonTapped
{
}

- (IBAction)menuButtonTapped:(id)sender
{
    [self.delegate topRevealButtonTapped];
}

-(ImageCollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ImageCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.imageView.image = [self.currentImageArray objectAtIndex: indexPath.row];
    return cell;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 3;
}

-(void)lionsButtonTapped
{
    self.currentImageArray = self.lionImageArray;
    [self.collectionView reloadData];
    [self.delegate topRevealButtonTapped];
}

-(void)tigersButtonTapped
{
    self.currentImageArray = self.tigerImageArray;
    [self.collectionView reloadData];
    [self.delegate topRevealButtonTapped];
}


@end

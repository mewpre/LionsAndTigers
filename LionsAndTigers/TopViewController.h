//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Yi-Chin Sun on 1/15/15.
//  Copyright (c) 2015 Yi-Chin Sun. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TopDelegate <NSObject>

- (void) topRevealButtonTapped;
//- (void) panGesture: (UIGestureRecognizer *) gesture;

@end

@interface TopViewController : UIViewController

@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property NSMutableArray *currentImageArray;
@property NSMutableArray *lionImageArray;
@property NSMutableArray *tigerImageArray;
@property (nonatomic, weak) id<TopDelegate> delegate;

@end

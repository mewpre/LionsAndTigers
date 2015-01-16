//
//  HUDViewController.h
//  LionsAndTigers
//
//  Created by Yi-Chin Sun on 1/15/15.
//  Copyright (c) 2015 Yi-Chin Sun. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HUDDelegate <NSObject>

-(void)lionsButtonTapped;

-(void)tigersButtonTapped;

@end

@interface HUDViewController : UIViewController

@property (nonatomic, weak) id<HUDDelegate> delegate;

@end

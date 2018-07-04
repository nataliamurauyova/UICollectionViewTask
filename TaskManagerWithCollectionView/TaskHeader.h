//
//  TaskHeader.h
//  TaskManagerWithCollectionView
//
//  Created by Наташа on 03.07.18.
//  Copyright © 2018 Наташа. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface TaskHeader : UICollectionViewCell
@property (strong,nonatomic) UILabel* nameLabel;
@property(strong,nonatomic) UITextField* textField;
@property(strong,nonatomic) UIButton* addTaskButton;
@property(strong,nonatomic) ViewController* viewController;

-(void) setUpViews;
-(void) addTask;
@end

//
//  TaskCell.h
//  TaskManagerWithCollectionView
//
//  Created by Наташа on 03.07.18.
//  Copyright © 2018 Наташа. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface TaskCell : UICollectionViewCell <UICollectionViewDelegateFlowLayout>
@property (strong,nonatomic) UILabel* nameLabel;
-(void) setUpViews;
@end

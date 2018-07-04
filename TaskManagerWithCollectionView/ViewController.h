//
//  ViewController.h
//  TaskManagerWithCollectionView
//
//  Created by Наташа on 03.07.18.
//  Copyright © 2018 Наташа. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UICollectionViewController <UICollectionViewDelegateFlowLayout>
@property(strong,nonatomic) NSMutableArray* tasks;
-(void) addNewTask: (NSString*)taskName;
@end


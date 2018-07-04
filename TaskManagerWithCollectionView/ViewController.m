//
//  ViewController.m
//  TaskManagerWithCollectionView
//
//  Created by Наташа on 03.07.18.
//  Copyright © 2018 Наташа. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "TaskCell.h"
#import "TaskHeader.h"

static NSString* const kCellIdentifier = @"cellID";
static NSString* const headerCellIdentifier = @"headerID";

@interface ViewController ()

@end

@implementation ViewController

-(NSMutableArray*) tasks{
    if (!_tasks){
        _tasks = [NSMutableArray arrayWithObjects:@"Task 1", @"Task 2", @"Task 3", nil];
    }
    return _tasks;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Task manager";
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.collectionView.alwaysBounceVertical = YES;
    
    
    [self.collectionView registerClass:[TaskCell class] forCellWithReuseIdentifier:kCellIdentifier];
    [self.collectionView registerClass:[TaskHeader class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier: headerCellIdentifier];
}
-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.tasks.count;
}
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    TaskCell *currentCell = [collectionView dequeueReusableCellWithReuseIdentifier:kCellIdentifier forIndexPath:indexPath];
    currentCell.nameLabel.text = self.tasks[indexPath.item];
    return currentCell;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(self.view.frame.size.width, 50);
}
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    TaskHeader *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:headerCellIdentifier forIndexPath:indexPath];
    headerView.viewController = self;
    return headerView;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section{
    return CGSizeMake(self.view.frame.size.width, 100);
}

-(void) addNewTask: (NSString*)taskName{
    [_tasks addObject:taskName];
    [self.collectionView reloadData];
}

@end

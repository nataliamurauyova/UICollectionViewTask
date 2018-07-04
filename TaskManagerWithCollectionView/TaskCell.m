//
//  TaskCell.m
//  TaskManagerWithCollectionView
//
//  Created by Наташа on 03.07.18.
//  Copyright © 2018 Наташа. All rights reserved.
//

#import "TaskCell.h"

@implementation TaskCell

-(instancetype) initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self){
        [self setUpViews];
    }
    return self;
}

-(UILabel * ) nameLabel {
    if (!_nameLabel){
        _nameLabel = [[UILabel alloc] init];
        _nameLabel.text = @"Sample";
        _nameLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _nameLabel.font = [UIFont boldSystemFontOfSize:14];
        
    }
    return _nameLabel;
    
}
-(void) setUpViews {
    [self addSubview:self.nameLabel];
    [NSLayoutConstraint activateConstraints:@[
                                              [self.nameLabel.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:8.0],
                                              [self.nameLabel.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:8.0],
                                              [self.nameLabel.heightAnchor constraintEqualToConstant:20.0],
                                              [self.nameLabel.centerYAnchor constraintEqualToAnchor:self.centerYAnchor]

                                              ]];

}

@end

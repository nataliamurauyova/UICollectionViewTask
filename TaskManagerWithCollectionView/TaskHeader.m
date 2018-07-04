//
//  TaskHeader.m
//  TaskManagerWithCollectionView
//
//  Created by Наташа on 03.07.18.
//  Copyright © 2018 Наташа. All rights reserved.
//

#import "TaskHeader.h"

@implementation TaskHeader
-(instancetype) initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self){
        [self setUpViews];
    }
    return self;
}

-(UITextField*) textField{
    if (!_textField){
        _textField = [[UITextField alloc] init];
        _textField.placeholder = @"Enter Task name";
        [_textField setBorderStyle:UITextBorderStyleRoundedRect];
        _textField.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _textField;
}

-(UIButton*) addTaskButton{
    if (!_addTaskButton){
        _addTaskButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [_addTaskButton setTitle:@"Add Task" forState: UIControlStateNormal];
        _addTaskButton.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _addTaskButton;
}

-(void) setUpViews {
    [self addSubview:self.textField];
    [self addSubview:self.addTaskButton];
    
    [_addTaskButton addTarget:self action:@selector(addTask) forControlEvents:UIControlEventTouchUpInside];
    
    [NSLayoutConstraint activateConstraints:@[
                                              [self.textField.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:8.0],
                                              [self.textField.heightAnchor constraintEqualToConstant:20.0],
                                              [self.textField.centerYAnchor constraintEqualToAnchor:self.centerYAnchor],
                                              [self.textField.widthAnchor constraintEqualToConstant:200.0],
                                              
                                              ]];
    [NSLayoutConstraint activateConstraints:@[
                                              [self.addTaskButton.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:8.0],
                                              [self.addTaskButton.heightAnchor constraintEqualToConstant:20.0],
                                              [self.addTaskButton.centerYAnchor constraintEqualToAnchor:self.centerYAnchor],
                                              [self.addTaskButton.widthAnchor constraintEqualToConstant:100.0],

                                              ]];

}
-(void) addTask{
    [_viewController addNewTask:_textField.text];
    _textField.text = @"";
}

@end

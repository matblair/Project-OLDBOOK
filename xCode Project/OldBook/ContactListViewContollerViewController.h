//
//  ContactListViewContollerViewController.h
//  OldBook
//
//  Created by Mat on 7/08/2013.
//  Copyright (c) 2013 Mat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactListViewContollerViewController : UIViewController

@property(nonatomic, weak) IBOutlet UICollectionView *collectionView;

@property (weak, nonatomic) NSArray *friendList;
@property (weak, nonatomic) NSArray *groups;

- (IBAction)addNewFriend:(id)sender;
- (IBAction)emergencyPressed: (id)sender;

@end

//
//  ContactListViewContollerViewController.m
//  OldBook
//
//  Created by Mat on 7/08/2013.
//  Copyright (c) 2013 Mat. All rights reserved.
//

#import "ContactListViewContollerViewController.h"
#import "Contact.h"

@interface ContactListViewContollerViewController () <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@end

@implementation ContactListViewContollerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization`
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    Contact *newContact = [[Contact alloc] initWithImage:[UIImage imageNamed:@"defaultimage"]];
    [self.friendList arrayByAddingObject:newContact];
    [self.groups arrayByAddingObject:self.friendList];
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"ContactCell"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addNewFriend:(id)sender {
    //To make work;
}

- (IBAction)emergencyPressed:(id)sender {
    //To also make work;
}

#pragma mark - UICollectionView Datasource

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section {
    //return [self.friendList count];
    return 100;
}

- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView {
    //return [self.groups count];
    return 20;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"ContactCell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor blueColor];
    return cell;
}


#pragma mark - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    // TODO: Select Item
}
- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath {
    // TODO: Deselect item
}


#pragma mark – UICollectionViewDelegateFlowLayout

// 1
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    Contact *cellContact = [self.friendList objectAtIndex:indexPath.row];
    UIImage *cellImage = cellContact.contactImage;
    CGSize retval = cellImage.size.width > 0 ? cellImage.size : CGSizeMake(50, 50);
    return retval;
}

// 3
- (UIEdgeInsets)collectionView:
(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(50, 20, 50, 20);
}

@end

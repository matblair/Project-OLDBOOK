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
    Contact *newContact = [[Contact alloc] initWithImage:[UIImage imageNamed:@"defaultimage.png"]];
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
    return 45;
}

- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView {
    //return [self.groups count];
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"ContactCell" forIndexPath:indexPath];
    UIImageView *cellImageView = [[UIImageView alloc] init];
    UIImage *cellImage = [UIImage imageNamed:@"defaultimage.png"];
    cellImageView.image = cellImage;
    [cell setBackgroundView:cellImageView];
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
    Contact *cellContact = [self.friendList objectAtIndex:0];
    UIImage *cellImage = cellContact.contactImage;
    //UIImage *cellImage = [UIImage imageNamed:@"defaultimage.png"];
    //NSLog(@"%lf", cellImage.size.width);
    CGSize retval = cellImage.size.width > 0 ? cellImage.size : CGSizeMake(75, 75);
    return retval;
}

// 3
- (UIEdgeInsets)collectionView:
(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(50, 20, 50, 20);
}

@end

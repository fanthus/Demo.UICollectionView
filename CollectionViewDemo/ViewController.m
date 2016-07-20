//
//  ViewController.m
//  CollectionViewDemo
//
//  Created by xiushanfan on 7/19/16.
//  Copyright © 2016 Frank. All rights reserved.
//

#import "ViewController.h"
#import "DMColTextCell.h"
#import "DMCollectionViewLayout.h"

#define kCellDefaultId  @"defaultCellId"
#define kCellTextId     @"textCellId"

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource> {
    UICollectionView *colView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    colView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:[[DMCollectionViewLayout alloc] init]];
    [colView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:kCellDefaultId];
    [colView registerClass:[DMColTextCell class] forCellWithReuseIdentifier:kCellTextId];
    colView.delegate = self;
    colView.dataSource = self;
    [self.view addSubview:colView];
}

#pragma mark - UICollectionViewDataSource Methods

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 2;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    DMColTextCell *cell = (DMColTextCell *)[collectionView dequeueReusableCellWithReuseIdentifier:kCellTextId forIndexPath:indexPath];
    cell.contentView.backgroundColor = [UIColor colorWithRed:0.608 green:0.98 blue:0.392 alpha:1];
    cell.contentLabel.text = [NSString stringWithFormat:@"%ld,%ld",(long)indexPath.section,(long)indexPath.row];
    return cell;
}

#pragma mark - UICollectionViewDelegate Methods


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.item == 5) {
        return CGSizeMake(50, 50);
    }
    return CGSizeMake(100, 100);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

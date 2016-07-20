//
//  DMCollectionViewLayout.m
//  CollectionViewDemo
//
//  Created by xiushanfan on 7/20/16.
//  Copyright © 2016 Frank. All rights reserved.
//

#import "DMCollectionViewLayout.h"

@implementation DMCollectionViewLayout

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.itemSize = CGSizeMake(100, 100);
        self.minimumLineSpacing = 50;
        self.minimumInteritemSpacing = 50;
    }
    return self;
}

- (nullable NSArray<__kindof UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    NSArray *array = [super layoutAttributesForElementsInRect:rect];
    UICollectionViewLayoutAttributes *layoutAttr = [array objectAtIndex:0];
    layoutAttr.alpha = 0.5;
    return array;
}



@end

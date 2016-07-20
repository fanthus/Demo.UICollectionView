//
//  DMColTextCell.m
//  CollectionViewDemo
//
//  Created by xiushanfan on 7/19/16.
//  Copyright © 2016 Frank. All rights reserved.
//

#import "DMColTextCell.h"

@implementation DMColTextCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.contentLabel = [[UILabel alloc] initWithFrame:self.bounds];
        self.contentLabel.font = [UIFont systemFontOfSize:15.0f];
        self.contentLabel.backgroundColor = [UIColor orangeColor];
        self.contentLabel.text = @"Hello world";
        self.contentLabel.adjustsFontSizeToFitWidth = YES;
        [self addSubview:self.contentLabel];
    }
    return self;
}

@end

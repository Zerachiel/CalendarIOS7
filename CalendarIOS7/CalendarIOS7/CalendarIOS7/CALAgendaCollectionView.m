//
//  CALAgendaMonthCollectionView.m
//  CalendarIOS7
//
//  Created by Jerome Morissard on 3/9/14.
//  Copyright (c) 2014 Jerome Morissard. All rights reserved.
//

#import "CALAgendaCollectionView.h"

#import "CALDayCollectionViewCell.h"
#import "CALQuartHourCollectionViewCell.h"
#import "CALDayHeaderView.h"
#import "CALMonthHeaderView.h"

@implementation CALAgendaCollectionView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout
{
    self = [super initWithFrame:frame collectionViewLayout:layout];
    if (self) {
        // Initialization code
        [self setup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        // Initialization code
        [self setup];
    }
    return self;
}

- (void)setup
{
    self.backgroundColor = [UIColor whiteColor];
    self.showsVerticalScrollIndicator = NO;
    self.showsHorizontalScrollIndicator = NO;
    [self registerClass:[CALDayCollectionViewCell class] forCellWithReuseIdentifier:@"CALDayCollectionViewCell"];    
    [self registerClass:[CALQuartHourCollectionViewCell class] forCellWithReuseIdentifier:@"CALQuartHourCollectionViewCell"];

    [self registerClass:[CALDayHeaderView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"CALDayHeaderView"];
    [self registerClass:[CALMonthHeaderView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"CALMonthHeaderView"];
    
}


@end

//
//  CPYViewController.m
//  CPYGridPagingLayout
//
//  Created by Cielpy on 11/11/2016.
//  Copyright (c) 2016 Cielpy. All rights reserved.
//

#import "CPYViewController.h"
#import <CPYGridPagingLayout/CPYGridPagingLayout.h>
#import "CPYGridDemoCollectionViewCell.h"

#define CPYRandomColor [UIColor colorWithRed:arc4random() % 255 / 255.0f green:arc4random() % 255 / 255.0f blue:arc4random() % 255 / 255.0f alpha:1.0f]

static NSString *const kCPYGridPageCellIdentifier = @"com.cielpy.home.cell";

@interface CPYViewController () <UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation CPYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//	 Do any additional setup after loading the view, typically from a nib.
    
    self.collectionView.pagingEnabled = YES;
    [self.collectionView registerClass:[CPYGridDemoCollectionViewCell class] forCellWithReuseIdentifier:kCPYGridPageCellIdentifier];
    
    CPYGridPagingLayout *layout = (CPYGridPagingLayout *)self.collectionView.collectionViewLayout;
    
    layout.direction = CPYGridPagingLayoutDirectionVertical;
    layout.numberOfLine = 4;
    layout.numberOfColum = 5;
    layout.blankBetweenPages = NO;
    layout.itemSize = CGSizeMake(30, 50);
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CPYGridDemoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kCPYGridPageCellIdentifier forIndexPath:indexPath];
    cell.backgroundColor = CPYRandomColor;
    cell.text = [NSString stringWithFormat:@"%ld", (long)indexPath.row];
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 200;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"selected %ld", (long)indexPath.row);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

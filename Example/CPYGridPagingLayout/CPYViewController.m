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
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [layout setNumberOfColum:2];
    });
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CPYGridDemoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kCPYGridPageCellIdentifier forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
    cell.text = [NSString stringWithFormat:@"%ld", (long)indexPath.row];
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
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

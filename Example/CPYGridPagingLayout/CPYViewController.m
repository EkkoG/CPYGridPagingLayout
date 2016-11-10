//
//  CPYViewController.m
//  CPYGridPagingLayout
//
//  Created by Cielpy on 11/11/2016.
//  Copyright (c) 2016 Cielpy. All rights reserved.
//

#import "CPYViewController.h"
#import "CPYGridPagingLayout.h"
#import "CPYGridDemoCollectionViewCell.h"

static NSString *const kCPYGridPageCellIdentifier = @"com.cielpy.home.cell";

@interface CPYViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@end

@implementation CPYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//	 Do any additional setup after loading the view, typically from a nib.
    CPYGridPagingLayout *layout = [[CPYGridPagingLayout alloc] init];
    layout.cloumOfLine = 3;
    layout.lineSpacing = 10;
    layout.itemSpacing = 10;
    UICollectionView *v = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
    v.backgroundColor = [UIColor whiteColor];
    v.pagingEnabled = YES;
    v.dataSource = self;
    v.delegate = self;
    [self.view addSubview:v];
    [v registerClass:[CPYGridDemoCollectionViewCell class] forCellWithReuseIdentifier:kCPYGridPageCellIdentifier];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CPYGridDemoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kCPYGridPageCellIdentifier forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
    cell.text = [NSString stringWithFormat:@"%ld", (long)indexPath.row];
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 50;
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

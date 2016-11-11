//
//  CPYGridPagingLayout.h
//  CPYGridPagingLayout
//
//  Created by ciel on 2016/11/10.
//  Copyright © 2016年 CPY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CPYGridPagingLayout : UICollectionViewLayout

@property (nonatomic, assign) NSInteger numberOfLine;

@property (nonatomic, assign) NSInteger numberOfColum;

@property (nonatomic, assign) CGFloat itemSpacing;

@property (nonatomic, assign) CGFloat lineSpacing;

@end

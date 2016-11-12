//
//  CPYGridPagingLayout.h
//  CPYGridPagingLayout
//
//  Created by ciel on 2016/11/10.
//  Copyright © 2016年 CPY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CPYGridPagingLayout : UICollectionViewLayout

@property (nonatomic, assign) IBInspectable NSInteger numberOfLine;

@property (nonatomic, assign) IBInspectable NSInteger numberOfColum;

@property (nonatomic, assign) IBInspectable CGFloat itemSpacing;

@property (nonatomic, assign) IBInspectable CGFloat lineSpacing;

@end

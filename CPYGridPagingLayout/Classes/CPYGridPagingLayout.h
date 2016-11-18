//
//  CPYGridPagingLayout.h
//  CPYGridPagingLayout
//
//  Created by ciel on 2016/11/10.
//  Copyright © 2016年 CPY. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, CPYGridPagingLayoutDirection) {
    CPYGridPagingLayoutDirectionVertical,
    CPYGridPagingLayoutDirectionHorizontal
};

@interface CPYGridPagingLayout : UICollectionViewLayout

@property (nonatomic, assign) IBInspectable NSInteger numberOfLine;

@property (nonatomic, assign) IBInspectable NSInteger numberOfColum;

@property (nonatomic, assign) IBInspectable CGFloat itemSpacing;

@property (nonatomic, assign) IBInspectable CGFloat lineSpacing;

@property (nonatomic, assign) CPYGridPagingLayoutDirection direction;

@property (nonatomic, assign) IBInspectable BOOL blankBetweenPages;

@end

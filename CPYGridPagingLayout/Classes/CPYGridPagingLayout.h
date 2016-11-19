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


/**
 Default value is CGSizeZero, with default value, layout will calculate the item size to make the items full of the collectionView
 if itemSize be set, for vertical layout, itemSize's width will be ignore, for horizontal layout, itemSize's height will be ignore.
 
 Warming: if the option be set, blankBetweentPages will be automatically be set with YES.
 */
@property (nonatomic, assign) CGSize itemSize;

@end

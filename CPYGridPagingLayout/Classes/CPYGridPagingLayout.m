//
//  CPYGridPagingLayout.m
//  CPYGridPagingLayout
//
//  Created by ciel on 2016/11/10.
//  Copyright © 2016年 CPY. All rights reserved.
//

#import "CPYGridPagingLayout.h"

@interface CPYGridPagingLayout ()

@property (nonatomic, assign) CGFloat itemWidth;

@property (nonatomic, assign) CGFloat itemHeight;

@property (nonatomic, strong) NSArray <UICollectionViewLayoutAttributes *> *attributes;

@property (nonatomic, assign) NSInteger pageNumber;

@end

@implementation CPYGridPagingLayout

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    [self setupDefault];
}

- (void)setupDefault {
    _numberOfLine = 2;
    _lineSpacing = 0;
    _itemSpacing = 0;
    _numberOfColum = 4;
    _direction = CPYGridPagingLayoutDirectionVertical;
}
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds {
    return !CGSizeEqualToSize(self.collectionView.bounds.size, newBounds.size);
}

- (void)invalidateLayout {
    [super invalidateLayout];
    self.attributes = nil;
    self.itemWidth = 0;
    self.itemHeight = 0;
    self.pageNumber = 0;
}

- (void)prepareLayout {
    NSInteger count = [self.collectionView numberOfItemsInSection:0];
    if (count == 0) {
        return;
    }
    
    NSInteger possiblePages = count / (self.numberOfLine * self.numberOfColum);
    NSInteger reminder = count % (self.numberOfLine * self.numberOfColum);
    self.pageNumber = (reminder == 0 ? possiblePages : (possiblePages + 1));
    
    CGFloat availableWidht = CGRectGetWidth(self.collectionView.bounds) - (self.numberOfColum - 1) * self.itemSpacing;
    self.itemWidth = availableWidht / self.numberOfColum;
    
    
    CGFloat avilableHeight = CGRectGetHeight(self.collectionView.bounds) - (self.numberOfLine - 1) * self.lineSpacing;
    self.itemHeight = avilableHeight / self.numberOfLine;
    
    NSMutableArray *attributes = [NSMutableArray array];
    for (int i = 0 ; i < count; i++) {
        NSInteger pageItemNumber = self.numberOfColum * self.numberOfLine;
        NSInteger page = i / pageItemNumber;
        
        NSInteger colum = i % pageItemNumber % self.numberOfColum;
        NSInteger line = i % pageItemNumber / self.numberOfColum;
        
        
        CGFloat x = (self.itemSpacing + self.itemWidth) * colum;
        CGFloat y = (self.lineSpacing + self.itemHeight) * line;
        
        if (self.direction == CPYGridPagingLayoutDirectionHorizontal) {
            x += page * CGRectGetWidth(self.collectionView.bounds);
        }
        else if (self.direction == CPYGridPagingLayoutDirectionVertical) {
            y += page * CGRectGetHeight(self.collectionView.bounds);
        }
        else {
            NSAssert(NO, @"unknown direction!");
        }
        
        CGRect frame = CGRectMake(x, y, self.itemWidth, self.itemHeight);
        
        UICollectionViewLayoutAttributes *attribute = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:[NSIndexPath indexPathForRow:i inSection:0]];
        attribute.frame = frame;
        [attributes addObject:attribute];
    }
    self.attributes = [attributes copy];
    
}

- (CGSize)collectionViewContentSize {
    if (self.direction == CPYGridPagingLayoutDirectionHorizontal) {
        return CGSizeMake(CGRectGetWidth(self.collectionView.bounds) * self.pageNumber, CGRectGetHeight(self.collectionView.bounds));
    }
    if (self.direction == CPYGridPagingLayoutDirectionVertical) {
        return CGSizeMake(CGRectGetWidth(self.collectionView.bounds), CGRectGetHeight(self.collectionView.bounds) * self.pageNumber);
    }
    return CGSizeZero;
}

- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    NSMutableArray *arr = [NSMutableArray array];
    for (UICollectionViewLayoutAttributes *attribte in self.attributes) {
        if (CGRectIntersectsRect(attribte.frame, rect)) {
            [arr addObject:attribte];
        }
    }
    return [arr copy];
}

#pragma mark - setters

- (void)setItemSpacing:(CGFloat)itemSpacing {
    _itemSpacing = itemSpacing;
    [self invalidateLayout];
}

- (void)setLineSpacing:(CGFloat)lineSpacing {
    _lineSpacing = lineSpacing;
    [self invalidateLayout];
}

- (void)setNumberOfLine:(NSInteger)numberOfLine {
    _numberOfLine = numberOfLine;
    [self invalidateLayout];
}

- (void)setNumberOfColum:(NSInteger)numberOfColum {
    _numberOfColum = numberOfColum;
    [self invalidateLayout];
}

- (void)setDirection:(CPYGridPagingLayoutDirection)direction {
    _direction = direction;
    [self invalidateLayout];
}

@end

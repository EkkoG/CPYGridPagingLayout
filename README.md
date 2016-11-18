# CPYGridPagingLayout

[![CI Status](http://img.shields.io/travis/cielpy/CPYGridPagingLayout.svg?style=flat)](https://travis-ci.org/Cielpy/CPYGridPagingLayout)
[![Version](https://img.shields.io/cocoapods/v/CPYGridPagingLayout.svg?style=flat)](http://cocoapods.org/pods/CPYGridPagingLayout)
[![License](https://img.shields.io/cocoapods/l/CPYGridPagingLayout.svg?style=flat)](http://cocoapods.org/pods/CPYGridPagingLayout)
[![Platform](https://img.shields.io/cocoapods/p/CPYGridPagingLayout.svg?style=flat)](http://cocoapods.org/pods/CPYGridPagingLayout)

## Overview

CPYGridPagingLayout is a UICollectionViewLayout subclass used to show items like a grid.

![](https://ws3.sinaimg.cn/bmiddle/74681984gw1f9wnw40goej20hs0vkaas.jpg)

## Features

* Both horizontal and vertical layout support
* Customized number of line and colum
* Customized item spacing and line spacing 
* Responsive UI support, you can change custom options anytime
* IBInspectable support

## Usage


```
    CPYGridPagingLayout *layout = [[CPYGridPagingLayout alloc] init];
    layout.numberOfColum = 5;
    layout.numberOfLine = 3;
    layout.itemSpacing = 10;
    layout.lineSpacing = 10;
    layout.direction = CPYGridPagingLayoutDirectionVertical;
    
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    collectionView.dataSource = self;
    collectionView.delegate = self;
    [self.view addSubview:collectionView];
    
//    you can use autolayout to layout the collection view here
    
//    and then you can change the layout's custom options if you need
```

## Installation

CPYGridPagingLayout is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "CPYGridPagingLayout"
```

## Contact

Cielpy, beijiu572@gmail.com

## License

CPYGridPagingLayout is available under the MIT license. See the LICENSE file for more info.



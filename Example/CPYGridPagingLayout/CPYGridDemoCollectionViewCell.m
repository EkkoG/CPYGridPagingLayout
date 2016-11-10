//
//  CPYGridDemoCollectionViewCell.m
//  CPYGridPageLayout
//
//  Created by ciel on 2016/11/11.
//  Copyright © 2016年 CPY. All rights reserved.
//

#import "CPYGridDemoCollectionViewCell.h"

@interface CPYGridDemoCollectionViewCell ()

@property (nonatomic, strong) UILabel *textLabel;

@end

@implementation CPYGridDemoCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    [self addSubview:self.textLabel];
    self.textLabel.frame = self.bounds;
}


- (void)setText:(NSString* )text {
    _text = [text copy];
    self.textLabel.text = text;
}


- (UILabel *)textLabel {
	if (!_textLabel) {
        _textLabel = [[UILabel alloc] init];
        _textLabel.textAlignment = NSTextAlignmentCenter;
	}
	return _textLabel;
}


@end

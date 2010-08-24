//
//  SSCollectionViewItem.m
//  SSToolkit
//
//  Created by Sam Soffes on 6/11/10.
//  Copyright 2010 Sam Soffes. All rights reserved.
//

#import "SSCollectionViewItem.h"

@implementation SSCollectionViewItem

@synthesize verticalAlignment = _verticalAlignment;
@synthesize preferredContentSize = _preferredContentSize;
@synthesize textLabel = _textLabel;
@synthesize detailTextLabel = _detailTextLabel;
@synthesize backgroundView = _backgroundView;
@synthesize selectedBackgroundView = _selectedBackgroundView;
@synthesize reuseIdentifier = _reuseIdentifier;
@synthesize selected = _selected;
@synthesize highlighted = _highlighted;

#pragma mark NSObject

- (void)dealloc {
	[_textLabel release];
	[_detailTextLabel release];
	[_backgroundView release];
	[_selectedBackgroundView release];
	[_reuseIdentifier release];
	[super dealloc];
}


#pragma mark UIView

- (id)initWithFrame:(CGRect)frame {
    return [self initWithStyle:SSCollectionViewItemStyleDefault reuseIdentifier:nil];
}


#pragma mark SSCollectionViewItem

- (id)initWithStyle:(SSCollectionViewItemStyle)style reuseIdentifier:(NSString *)aReuseIdentifier {
	if ((self = [super initWithFrame:CGRectZero])) {
		_style = style;
		_verticalAlignment = SSCollectionViewItemVerticalAlignmentBottom;
		_preferredContentSize = CGSizeZero;
		_reuseIdentifier = [aReuseIdentifier copy];
    }
    return self;
}


- (void)prepareForReuse {
	
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
	_selected = selected;
}


- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated {
	_highlighted = highlighted;
	
}

@end

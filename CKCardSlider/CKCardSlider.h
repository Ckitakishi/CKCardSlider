//
//  CKCardSlider.h
//  CKCardSliderDemo
//
//  Created by Ckitakishi on 2017/5/18.
//  Copyright © 2017年 Yuhan Chen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CKCardSlider : UIView <UIScrollViewDelegate>

/// page control
@property (nonatomic, strong) UIScrollView *scrollView;
/// page control
@property (nonatomic, strong) UIPageControl *pageControl;
/// card source array
@property (nonatomic, strong) NSArray *cardsArray;
/// page control: point(x, y)
@property (nonatomic, assign) CGPoint pageControlPoint;

/// read only
@property (nonatomic, readonly) CGFloat width;
@property (nonatomic, readonly) CGFloat height;

/// init
- (instancetype)initImageScrollViewWithFrame:(CGRect)rect;

@end


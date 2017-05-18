//
//  CKCardSlider.m
//  CKCardSliderDemo
//
//  Created by Ckitakishi on 2017/5/18.
//  Copyright © 2017年 Yuhan Chen. All rights reserved.
//

#import "CKCardSlider.h"

@implementation CKCardSlider

- (instancetype)initImageScrollViewWithFrame:(CGRect)rect {
    self = [super initWithFrame:rect];
    
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, rect.size.width, rect.size.height)];
    _scrollView.pagingEnabled = YES;
    _scrollView.clipsToBounds = YES;
    _scrollView.bounces = NO;
    _scrollView.contentOffset = CGPointZero;
    _scrollView.delegate = self;
    [self addSubview:_scrollView];
    
    return self;
}

- (void)setCardsArray:(NSArray *)cardsArray {
    _scrollView.contentSize = CGSizeMake(self.width * cardsArray.count, self.height);
    for (int i = 0; i < [cardsArray count]; i ++) {
        UIView *currentView = cardsArray[i];
        currentView.frame = CGRectMake(self.width * i, 0, self.width, self.height);
        [_scrollView addSubview:currentView] ;
    }
    _cardsArray = [cardsArray copy];
}

- (UIPageControl *)pageControl {
    if (!_pageControl) {
        NSInteger pageControlPositionX = _pageControlPoint.x;
        NSInteger pageControlPositionY = _pageControlPoint.y;
        
        _pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(pageControlPositionX , pageControlPositionY, 100, 60)];
        _pageControl.numberOfPages = _cardsArray.count;
        _pageControl.hidesForSinglePage = YES;
        // TODO: color
        _pageControl.pageIndicatorTintColor = [UIColor lightGrayColor];
        _pageControl.currentPageIndicatorTintColor = [UIColor darkGrayColor];
        [_pageControl addTarget:self action:@selector(pageDidChanged:) forControlEvents:UIControlEventValueChanged];
    }
    return _pageControl;
}

- (void)setPageControlPoint:(CGPoint)point {
    _pageControlPoint = point;
}


- (void)pageDidChanged:(UIPageControl *)pageControl {
    [_scrollView setContentOffset:CGPointMake(pageControl.currentPage * self.width, 0) animated:YES];
}

- (CGFloat)width {
    return _scrollView.bounds.size.width;
}

- (CGFloat)height {
    return _scrollView.bounds.size.height;
}


#pragma mark -
#pragma scrollView Delegate
- (void)scrollViewDidEndDecelerating:(CKCardSlider *)scrollView
{
    NSInteger index = fabs(_scrollView.contentOffset.x) / _scrollView.frame.size.width;
    [_pageControl setCurrentPage:index];
}


/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end


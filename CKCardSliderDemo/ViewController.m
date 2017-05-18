//
//  ViewController.m
//  CKCardSliderDemo
//
//  Created by Ckitakishi on 2017/5/18.
//  Copyright © 2017年 Yuhan Chen. All rights reserved.
//

#import "ViewController.h"
#import "CKCardSlider.h"
#import "CardTemplate1.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *baseView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    [self initCardSlider];
}

- (void)initCardSlider {
    // data source
    NSMutableArray *cards = [NSMutableArray array];
    int i = 0;
    while (i < 3) {
        CardTemplate1 *tp = [[CardTemplate1 alloc] initWithNibAndMainImage:@"template1_a.png"
                                                                      date:@"2017年5月18日"
                                                                  location:@"Tokyo"
                                                                      tags:@[]];
        [cards addObject:tp];
        i++;
    }
    
    // Init of scroll view
    CKCardSlider *scrollView = [[CKCardSlider alloc] initImageScrollViewWithFrame:self.baseView.layer.frame];
    
    scrollView.cardsArray = [cards copy];
    // the customized position of page control
    scrollView.pageControlPoint = CGPointMake( self.baseView.bounds.size.width / 2 - 50 , self.baseView.bounds.size.height);
    
    [self.baseView addSubview:scrollView];
    [self.baseView addSubview:scrollView.pageControl];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

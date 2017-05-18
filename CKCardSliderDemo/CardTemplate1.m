//
//  CardTemplate1.m
//  CKImageSliderDemo
//
//  Created by Ckitakishi on 2017/5/13.
//  Copyright © 2017年 Ckitakishi. All rights reserved.
//

#import "CardTemplate1.h"

@implementation CardTemplate1

- (instancetype)initWithNibAndMainImage:(NSString *)imageName
                                   date:(NSString *)date
                               location:(NSString *)location
                                   tags:(NSArray *)tags {
    self = [super init];
    if (self) {
        NSArray *nibs = [[NSBundle mainBundle] loadNibNamed:@"CardTemplate1" owner:self options:nil];
        if (nibs.count > 0) {
            self = (CardTemplate1 *)[nibs objectAtIndex:0];
        }
        self.mainImage.image = [UIImage imageNamed:imageName];
        self.dateLabel.text = date;
        self.locationLabel.text = location;
        for (NSString *tag in tags) {
            
        }
        self.frame = CGRectMake(0, 0, 400, 400);
    }
    return self;
}





/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

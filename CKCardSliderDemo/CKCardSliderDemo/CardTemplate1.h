//
//  CardTemplate1.h
//  CKImageSliderDemo
//
//  Created by Ckitakishi on 2017/5/13.
//  Copyright © 2017年 Ckitakishi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CardTemplate1 : UIView

@property (weak, nonatomic) IBOutlet UIImageView *mainImage;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UIView *TagsContainer;

- (instancetype)initWithNibAndMainImage:(NSString *)imageName
                                   date:(NSString *)date
                               location:(NSString *)location
                                   tags:(NSArray *)tags;

@end

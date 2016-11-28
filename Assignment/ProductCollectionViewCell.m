//
//  ProductCollectionViewCell.m
//  Assignment
//
//  Created by Zohaib Akram on 25/11/2016.
//  Copyright © 2016 Muhammad Bilal. All rights reserved.
//

#import "ProductCollectionViewCell.h"

@implementation ProductCollectionViewCell




- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.contentView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    self.contentView.translatesAutoresizingMaskIntoConstraints = YES;
}



-(void)layoutSubviews{
    //
//        self.layer.shadowOffset = CGSizeMake(1, 0);
//        self.layer.shadowColor = [[UIColor whiteColor] CGColor];
//        self.layer.shadowRadius = 5;
//        self.layer.shadowOpacity = .25;

}
@end

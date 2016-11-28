//
//  ProductCollectionViewCell.h
//  Assignment
//
//  Created by Zohaib Akram on 25/11/2016.
//  Copyright © 2016 Muhammad Bilal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductCollectionViewCell : UICollectionViewCell

@property (strong, nonatomic) IBOutlet UIImageView *productImageView;

@property (strong, nonatomic) IBOutlet UIImageView *flagImageView;
@property (strong, nonatomic) IBOutlet UILabel *productDetail;
@property (strong, nonatomic) IBOutlet UILabel *productPrice;
@property (strong, nonatomic) IBOutlet UIButton *addButton;

@end

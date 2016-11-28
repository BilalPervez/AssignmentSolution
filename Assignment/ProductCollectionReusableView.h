//
//  ProductCollectionReusableView.h
//  Assignment
//
//  Created by Zohaib Akram on 26/11/2016.
//  Copyright © 2016 Muhammad Bilal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductCollectionReusableView : UICollectionReusableView
@property (strong, nonatomic) IBOutlet UILabel *productCellTitleLabel;
@property (strong, nonatomic) IBOutlet UIButton *moreButton;

@end

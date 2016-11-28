//
//  ProductCollectionViewDelegate.h
//  Assignment
//
//  Created by Zohaib Akram on 25/11/2016.
//  Copyright © 2016 Muhammad Bilal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProductCollectionViewCell.h"
#import "ProductCollectionReusableView.h"

@interface ProductCollectionViewDelegate : NSObject <UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@property(nonatomic,strong) NSMutableArray *hotDealsProductsDetailArray;
@property(nonatomic,strong) NSMutableArray *latestProductsDetailArray;


@end

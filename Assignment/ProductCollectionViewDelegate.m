//
//  ProductCollectionViewDelegate.m
//  Assignment
//
//  Created by Zohaib Akram on 25/11/2016.
//  Copyright © 2016 Muhammad Bilal. All rights reserved.
//

#import "ProductCollectionViewDelegate.h"

@implementation ProductCollectionViewDelegate





- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    //return [self.productArray count];
    switch (section) {
        case 0:
            return [self.hotDealsProductsDetailArray count];
            break;
            
        case 1:
            return [self.latestProductsDetailArray count];
            break;
        default:
            break;
    }
    return 0;
}

//@{@"ProdImage":@"prod2",@"Flag":@"home_flag1",@"prodDetail":@"Scott Tissue Roll 1 Pack",@"prodPrice":@"3.70 AED"}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *identifier = @"ProductCell";
    
    ProductCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    cell.layer.borderWidth=1.0f;
    cell.layer.borderColor=[UIColor grayColor].CGColor;

//    
//    cell.layer.shadowOffset = CGSizeMake(1, 0);
//    cell.layer.shadowColor = [[UIColor blackColor] CGColor];
//    cell.layer.shadowRadius = 5;
//    cell.layer.shadowOpacity = .25;

    CGRect shadowFrame = cell.layer.bounds;
    CGPathRef shadowPath = [UIBezierPath bezierPathWithRect:shadowFrame].CGPath;
    cell.layer.shadowPath = shadowPath;
    
    if (indexPath.section ==0) {
        //HOT Deals Products
        [cell.productImageView setImage:[UIImage imageNamed:self.hotDealsProductsDetailArray[indexPath.row][@"ProdImage"]]];
        [cell.flagImageView setImage:[UIImage imageNamed:self.hotDealsProductsDetailArray[indexPath.row][@"Flag"]]];
        cell.productDetail.text = self.hotDealsProductsDetailArray[indexPath.row][@"prodDetail"];
        cell.productPrice.text = self.hotDealsProductsDetailArray[indexPath.row][@"prodPrice"];
    }else{
        
                // Latest Products
        [cell.productImageView setImage:[UIImage imageNamed:self.latestProductsDetailArray[indexPath.row][@"ProdImage"]]];
        [cell.flagImageView setImage:[UIImage imageNamed:self.latestProductsDetailArray[indexPath.row][@"Flag"]]];
        cell.productDetail.text = self.latestProductsDetailArray[indexPath.row][@"prodDetail"];
        cell.productPrice.text = self.latestProductsDetailArray[indexPath.row][@"prodPrice"];
    }
   
    
   
    
    return cell;
    
}



- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    return 2;
}


- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    
    UICollectionReusableView *reusableview = nil;
    
    if (kind == UICollectionElementKindSectionHeader) {

        ProductCollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView" forIndexPath:indexPath];
        
        if (indexPath.section == 0) {
            headerView.productCellTitleLabel.text = @"HOT DEALS";
            
        }else{
            headerView.productCellTitleLabel.text = @"LATEST PRODUCTS";
            headerView.moreButton.hidden=YES;
        }
    
        
        
        
        reusableview = headerView;
    }
    
    
    return reusableview;

    
}



//FlowLayout




- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
    return CGSizeMake(([UIScreen mainScreen].bounds.size.width/2)-25, ([UIScreen mainScreen].bounds.size.width)/2-25);
    
    
}
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    
    return UIEdgeInsetsMake(3, 20, 3, 20);
    
}





@end

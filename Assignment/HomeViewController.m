//
//  HomeViewController.m
//  Assignment
//
//  Created by Zohaib Akram on 25/11/2016.
//  Copyright © 2016 Muhammad Bilal. All rights reserved.
//

#import "HomeViewController.h"
#import "ProductCollectionViewDelegate.h"
#import <QuartzCore/QuartzCore.h>

@interface HomeViewController ()<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *searchTextField;
@property (strong, nonatomic) IBOutlet UICollectionView *productCollectionView;
@property (strong, nonatomic) IBOutlet UIView *menuView;

@property (strong, nonatomic) IBOutlet UIView *searchView;

@property(nonatomic,strong) ProductCollectionViewDelegate *productCollectionViewDelegate;
@property(nonatomic,strong) NSMutableArray *hotDealsProductsDetailArray;
@property(nonatomic,strong) NSMutableArray *latestProductsDetailArray;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.searchTextField.delegate = self;
//    self.searchView.layer.masksToBounds = NO;
//
//    self.searchView.layer.shadowOffset = CGSizeMake(-5, 5);
//    self.searchView.layer.shadowRadius = 5;
//    self.searchView.layer.shadowOpacity = 0.5;
    
    
    self.searchView.layer.masksToBounds = NO;
    self.searchView.layer.shadowOffset = CGSizeMake(-0.5, 0.5);
    self.searchView.layer.shadowRadius = 5;
    self.searchView.layer.shadowOpacity = 0.5;
    // Do any additional setup after loading the view.
    
    //Load the Product Array
    self.hotDealsProductsDetailArray = [NSMutableArray arrayWithObjects:@{@"ProdImage":@"prod2",@"Flag":@"home_flag1",@"prodDetail":@"Scott Tissue Roll 1 Pack",@"prodPrice":@"3.70 AED"},@{@"ProdImage":@"prod1",@"Flag":@"home_flag1",@"prodDetail":@"Sanita Ficial Tissue 1 Pack",@"prodPrice":@"14.75 AED"}, nil];
    
    
        self.latestProductsDetailArray = [NSMutableArray arrayWithObjects:@{@"ProdImage":@"prod3",@"Flag":@"home_flag2",@"prodDetail":@"Hip Baby Food 159 GM",@"prodPrice":@"16.25 AED"},@{@"ProdImage":@"prod4",@"Flag":@"home_flag1",@"prodDetail":@"Always Sanita 1 Bag",@"prodPrice":@"6.00 AED"},@{@"ProdImage":@"prod5",@"Flag":@"home_flag1",@"prodDetail":@"chubbs Baby Wipes 80 Layers",@"prodPrice":@"16.25 AED"},@{@"ProdImage":@"prod6",@"Flag":@"home_flag2",@"prodDetail":@"Hip Baby Milk 900 GM",@"prodPrice":@"6.00 AED"}, nil];
    
    
    self.productCollectionViewDelegate = [ProductCollectionViewDelegate new];
    self.productCollectionView.dataSource = self.productCollectionViewDelegate;
    self.productCollectionView.delegate = self.productCollectionViewDelegate;
    
    self.productCollectionViewDelegate.hotDealsProductsDetailArray = self.hotDealsProductsDetailArray;
    self.productCollectionViewDelegate.latestProductsDetailArray = self.latestProductsDetailArray;
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma UITextFieldDelegate


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}

@end

//
//  EHPracticeWordCardView.m
//  toeflWord
//
//  Created by shun on 2016/12/14.
//  Copyright © 2016年 enhance. All rights reserved.
//

#import "EHPracticeWordCardView.h"
#import "EHPracticeWordCardViewCell.h"

#define CellWidth [UIScreen mainScreen].bounds.size.width - 40
#define CellSpace 5
#define dataScourceCount 9
#define CellCount 10
@interface EHPracticeWordCardView ()<UICollectionViewDelegate, UICollectionViewDataSource>

@end
@implementation EHPracticeWordCardView


- (void)awakeFromNib {
    [super awakeFromNib];
    UINib *cellNib = [UINib nibWithNibName:@"EHPracticeWordCardViewCell" bundle:[NSBundle mainBundle]];
    [self.collectionView registerNib:cellNib forCellWithReuseIdentifier:@"EHPracticeWordCardViewCell"];
}

- (void)setWordVMArray:(NSArray<EHWordVM *> *)wordVMArray {
    _wordVMArray = wordVMArray;
    [self.collectionView reloadData];
}

#pragma mark collectionView代理方法
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return CellCount;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    EHPracticeWordCardViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"EHPracticeWordCardViewCell" forIndexPath:indexPath];
    [cell setIndexPath:indexPath];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(CellWidth, self.collectionView.frame.size.height);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 0;
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return CellSpace;
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(0, 20, 0, 20);
}

@end

//
//  EHPracticeWordCardView.m
//  toeflWord
//
//  Created by shun on 2016/12/14.
//  Copyright © 2016年 enhance. All rights reserved.
//

#import "EHPracticeWordCardView.h"
#import "EHPracticeWordCardViewCell.h"
//#import "EHWordVM.h"
//#import "EHBookRecordVM.h"

#define CellWidth [UIScreen mainScreen].bounds.size.width - 40
#define CellSpace 5
#define dataScourceCount 9
#define CellCount 10
@interface EHPracticeWordCardView ()<UICollectionViewDelegate, UICollectionViewDataSource,UIGestureRecognizerDelegate>

@property (weak, nonatomic) IBOutlet UIView *wordCheckView;

@property (nonatomic, assign) NSInteger numPages;
@end
@implementation EHPracticeWordCardView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setupUI];
    }
    return self;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    UINib *cellNib = [UINib nibWithNibName:@"EHPracticeWordCardViewCell" bundle:[NSBundle mainBundle]];
    [self.collectionView registerNib:cellNib forCellWithReuseIdentifier:@"EHPracticeWordCardViewCell"];
    UISwipeGestureRecognizer *recognizer = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleSwipeFrom:)];
    // 上滑
    [recognizer setDirection:(UISwipeGestureRecognizerDirectionUp)];
    [self.collectionView addGestureRecognizer:recognizer];
    self.wordCheckView.hidden = YES;
}

- (void)setupUI {
}
- (void)setWordVMArray:(NSArray<EHWordVM *> *)wordVMArray {
    _wordVMArray = wordVMArray;
    [self.collectionView reloadData];
}


-(void)handleSwipeFrom:(UISwipeGestureRecognizer *)recognizer {
    [self.delegate tranformWordDetailView];
}

///!!!: 整个关键在这一句
//- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset {
//    *targetContentOffset = scrollView.contentOffset; // set acceleration to 0.0
//    float pageWidth = (float)CellWidth;
//    int minSpace = 10;
//    
//    int cellToSwipe = (scrollView.contentOffset.x)/(pageWidth + minSpace) + 0.5; // cell width + min spacing for lines
//    if (cellToSwipe < 0) {
//        cellToSwipe = 0;
//    } else if (cellToSwipe >= CellCount) {
//        cellToSwipe = CellCount - 1;
//    }
//    CGFloat scrollPointX = (CellWidth + CellSpace) * cellToSwipe;
//    /// 滚动到指定页数
////    [self.collectionView scrollToItemAtIndexPath:[NSIndexPath indexPathForRow:cellToSwipe inSection:0] atScrollPosition:UICollectionViewScrollPositionLeft animated:YES];
//    
//    [self.collectionView setContentOffset:CGPointMake(scrollPointX, self.collectionView.contentOffset.y) animated:YES];
//    
//}


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
    return UIEdgeInsetsMake(0, 20, 0, 0);
}

@end

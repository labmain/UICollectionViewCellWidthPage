//
//  EHPracticeWordCardView.h
//  toeflWord
//
//  Created by shun on 2016/12/14.
//  Copyright © 2016年 enhance. All rights reserved.
//

#import <UIKit/UIKit.h>
@class EHWordVM;
@protocol EHPracticeWordCardViewDelegate <NSObject>
- (void)tranformWordDetailView;
- (void)wordCardViewScrollToPage:(NSInteger)pageIndex;
- (void)wordCardViewGoToWordCheckVC;
@end
@interface EHPracticeWordCardView : UIView
@property (nonatomic, strong)NSArray<EHWordVM *> *wordVMArray;
@property (weak, nonatomic) IBOutlet UILabel *unitProgressLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *lineUPImageView;
@property (weak, nonatomic) IBOutlet UIImageView *lineDownImageView;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic, weak) id<EHPracticeWordCardViewDelegate> delegate;

- (void)scrollToPage:(NSInteger)pageIndex;
@end

//
//  EHPracticeWordCardView.h
//  toeflWord
//
//  Created by shun on 2016/12/14.
//  Copyright © 2016年 enhance. All rights reserved.
//

#import <UIKit/UIKit.h>
@class EHWordVM;
@interface EHPracticeWordCardView : UIView
@property (nonatomic, strong)NSArray<EHWordVM *> *wordVMArray;
@property (weak, nonatomic) IBOutlet UILabel *unitProgressLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

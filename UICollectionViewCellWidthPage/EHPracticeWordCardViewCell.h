//
//  EHPracticeWordCardViewCell.h
//  toeflWord
//
//  Created by shun on 2016/12/14.
//  Copyright © 2016年 enhance. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EHWordVM;
@interface EHPracticeWordCardViewCell : UICollectionViewCell


- (void)setWordVM:(EHWordVM *)wordVM WithUnitCount:(NSInteger)unitCount withIndexPath:(NSIndexPath *)indexPath;
- (void)setIndexPath:(NSIndexPath *)indexPath;
@end

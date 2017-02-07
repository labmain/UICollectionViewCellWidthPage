//
//  EHPracticeWordCardLayout.m
//  toeflWord
//
//  Created by shun on 2016/12/14.
//  Copyright © 2016年 enhance. All rights reserved.
//

#import "EHPracticeWordCardLayout.h"

@implementation EHPracticeWordCardLayout
//- (void)awakeFromNib {
//    [super awakeFromNib];
//    self.itemSize = CGSizeMake(75.0, 75.0);
//    self.minimumInteritemSpacing = 10.0;
//    self.minimumLineSpacing = 10.0;
//    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
//    self.sectionInset = UIEdgeInsetsMake(10.0, 10.0, 10.0, 10.0);
//}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset
                                 withScrollingVelocity:(CGPoint)velocity {
    
    CGRect cvBounds = self.collectionView.bounds;
    CGFloat halfWidth = cvBounds.size.width * 0.5f;
    CGFloat proposedContentOffsetCenterX = offset.x + halfWidth;
    
    NSArray* attributesArray = [self layoutAttributesForElementsInRect:cvBounds];
    
    UICollectionViewLayoutAttributes* candidateAttributes;
    for (UICollectionViewLayoutAttributes* attributes in attributesArray) {
        
        // == Skip comparison with non-cell items (headers and footers) == //
        if (attributes.representedElementCategory !=
            UICollectionElementCategoryCell) {
            continue;
        }
        
        // == First time in the loop == //
        if(!candidateAttributes) {
            candidateAttributes = attributes;
            continue;
        }
        
        if (fabs(attributes.center.x - proposedContentOffsetCenterX) <
            fabs(candidateAttributes.center.x - proposedContentOffsetCenterX)) {
            candidateAttributes = attributes;
        }
    }
    
    return CGPointMake(candidateAttributes.center.x - halfWidth, offset.y);
    
}
@end

//
//  EHPracticeWordCardViewCell.m
//  toeflWord
//
//  Created by shun on 2016/12/14.
//  Copyright © 2016年 enhance. All rights reserved.
//

#import "EHPracticeWordCardViewCell.h"
//#import "EHWordVM.h"
//#import "EHCollectBtn.h"
//#import "EHReadVoiceView.h"

@interface EHPracticeWordCardViewCell ()
@property (weak, nonatomic) IBOutlet UIView *CollectionContentView;
@property (weak, nonatomic) IBOutlet UILabel *wordCurrentIndexLabel;
@property (weak, nonatomic) IBOutlet UIButton *wordCollectionBtn;
@property (weak, nonatomic) IBOutlet UILabel *wordNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *pronLabel;
@property (weak, nonatomic) IBOutlet UIView *readVoiceView;
@property (weak, nonatomic) IBOutlet UILabel *wordCategoryLabel;
@property (weak, nonatomic) IBOutlet UIView *wordPropertyView;
@property (nonatomic, strong) EHWordVM *wordVM;
@property (nonatomic, assign) NSInteger unitCount;
@property (nonatomic, strong) NSIndexPath *indexPath;
@end
@implementation EHPracticeWordCardViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    /// 阴影圆角
    self.CollectionContentView.backgroundColor = [UIColor colorWithRed:36/255.0 green:186/255.0 blue:168/255.0 alpha:1];
    self.CollectionContentView.layer.shadowOffset = CGSizeMake(0, 2);
    self.CollectionContentView.layer.shadowOpacity = 1;
    self.CollectionContentView.layer.shadowRadius = 4;
//    self.CollectionContentView.layer.shadowColor = HexRGBAlpha(0xDBDBDB, 0.3).CGColor;
    self.CollectionContentView.layer.cornerRadius = 5;
}

- (void)setWordVM:(EHWordVM *)wordVM WithUnitCount:(NSInteger)unitCount withIndexPath:(NSIndexPath *)indexPath{
//    self.wordVM = wordVM;
//    self.unitCount = unitCount;
//    self.indexPath = indexPath;
//    self.readVoiceView.wordVM = wordVM;
//    self.wordCurrentIndexLabel.text = [NSString stringWithFormat:@"%zd/%zd",indexPath.row + 1,unitCount];
//    
//    [self.wordCollectionBtn checkCollectwithWordID:wordVM.wordModel.wordID];
//    
//    self.wordNameLabel.text = wordVM.wordModel.word;
//    self.pronLabel.text = [NSString stringWithFormat:@"[%@]",wordVM.pron];
//    self.wordCategoryLabel.text = [EHWordVM getWordCategoryStringWithArray:wordVM.wordContentModel.category];
//    
//    for (UIView *view in self.wordPropertyView.subviews) {
//        [view removeFromSuperview];
//    }
//    
//    UILabel *lastLabel;
//    for (EHExamPointModel *examPointModel in wordVM.wordContentModel.exam_point) {
//        UILabel *label = [[UILabel alloc] init];
//        [self.wordPropertyView addSubview:label];
//        NSString *ropertyStr = [EHWordVM getWordPropertyStringWithNumber:examPointModel.property.intValue];
//        label.text = [NSString stringWithFormat:@"%@ %@",ropertyStr, examPointModel.trans_cn];
//        label.textColor = kColorFontDeepBlack;
//        label.numberOfLines = 0;
//        label.textAlignment = NSTextAlignmentCenter;
//        label.font = [UIFont fontWithName:@"PingFangSC-Regular" size:15];
//        if (lastLabel) {
//            [label mas_makeConstraints:^(MASConstraintMaker *make) {
//                make.top.equalTo(lastLabel.mas_bottom).offset(12);
//                make.centerX.equalTo(lastLabel);
//                make.left.lessThanOrEqualTo(self.wordPropertyView).offset(16);
//                make.right.lessThanOrEqualTo(self.wordPropertyView).offset(-16);
//            }];
//        } else {
//            [label mas_makeConstraints:^(MASConstraintMaker *make) {
//                make.top.centerX.equalTo(self.wordPropertyView);
//                make.left.lessThanOrEqualTo(self.wordPropertyView).offset(16);
//                make.right.lessThanOrEqualTo(self.wordPropertyView).offset(-16);
//            }];
//        }
//        lastLabel = label;
//    }
}
- (void)setIndexPath:(NSIndexPath *)indexPath {
    self.wordCurrentIndexLabel.text = [NSString stringWithFormat:@"%zd",indexPath.row + 1];
}
@end

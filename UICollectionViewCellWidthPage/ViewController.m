//
//  ViewController.m
//  UICollectionViewCellWidthPage
//
//  Created by 王顺 on 2017/2/5.
//  Copyright © 2017年 shun. All rights reserved.
//

#import "ViewController.h"
#import "EHPracticeWordCardView.h"
@interface ViewController ()
@property (nonatomic, strong) EHPracticeWordCardView *wordCardView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.wordCardView];
    self.wordCardView.frame = CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (EHPracticeWordCardView *)wordCardView {
    if(_wordCardView == nil) {
        _wordCardView = [[[NSBundle mainBundle] loadNibNamed:@"EHPracticeWordCardView" owner:nil options:nil] firstObject];
    }
    return _wordCardView;
}
@end

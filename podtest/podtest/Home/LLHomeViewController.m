//
//  LLHomeViewController.m
//  podtest
//
//  Created by cisdi on 2019/6/18.
//  Copyright © 2019 lzy. All rights reserved.
//

#import "LLHomeViewController.h"
#import <Masonry/Masonry.h>

@interface LLHomeViewController ()

@property (nonatomic, strong) UIView *topView;
@end

@implementation LLHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.topView];
    
    [self.topView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(12);
        make.left.equalTo(self.view).offset(12);
        make.right.equalTo(self.view).offset(-12);
        make.height.mas_equalTo(110);
    }];
}


- (UIView*)topView{
    if(!_topView){
        _topView = [[UIView alloc]initWithFrame:CGRectZero];
        _topView.backgroundColor = [UIColor blueColor];
    }
    return _topView;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

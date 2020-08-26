//
//  MTHomeRootVC.m
//  Masonry
//
//  Created by Eleven on 2020/8/26.
//

#import "MTHomeRootVC.h"
//#import <YYKit/YYKit.h>
#import <Masonry/Masonry.h>

@interface MTHomeRootVC ()

@property (nonatomic, strong) UITextView *tv;
@property (nonatomic, strong) UILabel *lb;
@property (nonatomic, strong) UIButton *btn;

@end

@implementation MTHomeRootVC

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
    [self setupData];
}


#pragma mark - UI
- (void)setupUI {
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.tv];
    [self.view addSubview:self.lb];
    [self.view addSubview:self.btn];
    
    [self.lb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.and.right.equalTo(self.view).inset(40.f);
        if (@available(iOS 11.0, *)) {
            make.top.equalTo(self.view.mas_safeAreaLayoutGuideTop).inset(50.f);
        } else {
            make.top.equalTo(self.view.mas_top).inset(50.f);
        }
        make.height.mas_equalTo(self.lb.font.lineHeight);
    }];
    
    [self.tv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.lb.mas_bottom).inset(15.f);
        make.leading.and.trailing.equalTo(self.lb);
        make.height.equalTo(self.view.mas_height).multipliedBy(.6f);
    }];
    
    [self.btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.and.width.equalTo(self.tv);
        make.top.equalTo(self.tv.mas_bottom).inset(75.f);
        make.height.mas_equalTo(35.f);
    }];
}


#pragma mark - Data
- (void)setupData {
    
}


#pragma mark - Event Response


#pragma mark - Public Methods


#pragma mark - Private Methods


#pragma mark - Overiding Methods


#pragma mark - Delegate


#pragma mark - Request


#pragma mark - Setter


#pragma mark - Getter
- (UITextView *)tv {
    if (!_tv) {
        _tv = [[UITextView alloc] init];
        _tv.backgroundColor = [UIColor greenColor];
    }
    
    return _tv;
}

- (UILabel *)lb {
    if (!_lb) {
        _lb = [[UILabel alloc] init];
        _lb.textColor = [UIColor blackColor];
        _lb.backgroundColor = [UIColor whiteColor];
        _lb.font = [UIFont systemFontOfSize:15.f];
        _lb.textAlignment = NSTextAlignmentCenter;
        _lb.text = @"Title";
    }
    
    return _lb;
}

- (UIButton *)btn {
    if (!_btn) {
        _btn = [[UIButton alloc] init];
        [_btn setTitle:@"Done" forState:UIControlStateNormal];
        [_btn setBackgroundColor:[UIColor redColor]];
    }
    
    return _btn;
}

@end
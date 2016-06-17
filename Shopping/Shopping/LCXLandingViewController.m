//
//  LCXLandingViewController.m
//  Shopping
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 李晨曦. All rights reserved.
//

#import "LCXLandingViewController.h"

@interface LCXLandingViewController ()

@property (strong, nonatomic) UILabel *backLable;
@property (strong, nonatomic) UILabel *lineLable;
@property (strong, nonatomic) UITextField *nameText;
@property (strong, nonatomic) UITextField *passText;
@property (strong, nonatomic) UIButton *landingBtn;
@property (strong, nonatomic) UIButton *loginBtn;
@property (strong, nonatomic) UIButton *QQbtn;
@property (strong, nonatomic) UIButton *WeChatBtn;
@property (strong, nonatomic) UIButton *WeiBoBtn;

@end

@implementation LCXLandingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark
#pragma mark  Attribute

- (UILabel *)backLable
{
    if (!_backLable)
    {
        _backLable = [[UILabel alloc]init];
        _backLable.backgroundColor = [UIColor whiteColor];
    }
    return _backLable;
}
- (UILabel *)lineLable
{
    if (_lineLable) {
        _lineLable = [[UILabel alloc]init];
    }
    return _lineLable;
}
- (UITextField *)nameText
{
    if (!_nameText)
    {
        _nameText = [[UITextField alloc]init];
        _nameText.placeholder = @"请输入手机号";
        _nameText.borderStyle = UITextBorderStyleNone;
        _nameText.backgroundColor = [UIColor whiteColor];
    }
    return _nameText;
}
- (UITextField *)passText
{
    if (!_passText)
    {
        _passText = [[UITextField alloc]init];
        _passText.placeholder = @"请输入密码";
    }
    return  _passText;
}
- (UIButton *)loginBtn
{
    if (!_loginBtn)
    {
        _loginBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        [_loginBtn setTitle:@"立即注册" forState:UIControlStateNormal];
        _loginBtn.backgroundColor = RGB(25, 152, 189);
    }
    return _loginBtn;
}
- (UIButton *)landingBtn
{
    if (!_landingBtn)
    {
        _landingBtn = [[UIButton alloc]init];
        [_landingBtn setTitle:@"登录" forState:UIControlStateNormal];
        [_landingBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _landingBtn.backgroundColor = RGB(37, 182, 243);
    }
    return _landingBtn;
}
- (UIButton *)QQbtn
{
    if (!_QQbtn)
    {
        _QQbtn = [[UIButton alloc]init];
        [_QQbtn setTitle:@"QQ" forState:UIControlStateNormal];
        [_QQbtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _QQbtn.backgroundColor = RGB(37, 182, 243);
    }
    return _QQbtn;
}



@end

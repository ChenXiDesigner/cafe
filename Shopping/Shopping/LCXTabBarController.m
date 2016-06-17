//
//  LCXTabBarController.m
//  Shopping
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 李晨曦. All rights reserved.
//

#import "LCXTabBarController.h"
#import "LCXNavigationCotroller.h"

@interface LCXTabBarController ()

@property (strong, nonatomic) NSArray *viewControllerArr;

@end
@implementation LCXTabBarController

-(void)viewDidLoad
{
    NSMutableArray *muArray = [NSMutableArray arrayWithCapacity:self.viewControllerArr.count];
    //循环遍历
    [self.viewControllerArr enumerateObjectsUsingBlock:^(NSDictionary *dic, NSUInteger idx, BOOL * _Nonnull stop)
    {
        Class viewControllerClass = NSClassFromString(dic[@"ViewController"]);
        UIViewController *ViewController = [[viewControllerClass alloc]init];
        ViewController.title = dic[@"Title"];
        //设置选中图片及图片属性
        ViewController.tabBarItem.selectedImage = [[UIImage imageNamed:@"TabbarSelectItemImage"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        //未选中图片设置
        ViewController.tabBarItem.image = [[UIImage imageNamed:@"TabbarItemImage"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        //navigation
        LCXNavigationCotroller *navigationVC = [[LCXNavigationCotroller alloc]initWithRootViewController:ViewController];
        [muArray addObject:navigationVC];
//        [self addChildViewController:ViewController];
    }];
    
    //设置字体颜色等
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:10.0],
                                                        NSForegroundColorAttributeName : [UIColor grayColor]} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Bold" size:10.0f],
                                                        NSForegroundColorAttributeName : RGB(65, 179, 241)} forState:(UIControlStateSelected)];
    self.viewControllers = muArray;
    self.selectedIndex = 0;
}


- (NSArray *)viewControllerArr
{
    if (!_viewControllerArr)
    {
        _viewControllerArr = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"TabBarController" ofType:@"plist"]];
    }
    return _viewControllerArr;
}



@end

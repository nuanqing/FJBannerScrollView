//
//  ViewController.m
//  ScrollviewDemo
//
//  Created by webplus on 17/12/19.
//  Copyright © 2017年 李Sir灬. All rights reserved.
//

#import "ViewController.h"
#import "FJBannerScrollView.h"

#define Kwidth [UIScreen mainScreen].bounds.size.width
#define Kheight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()<BannerScrollViewDelegate>

@property (nonatomic,strong)FJBannerScrollView *fscrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //图片宽度
    self.fscrollView.imgWidth = Kwidth-40;
    //边距
    self.fscrollView.imgEdgePadding = 30;
    //两个图片间距
    self.fscrollView.imgMargnPadding = 10;
    //默认图
    self.fscrollView.defaultImg = @"moren";
    //圆角（0的时候没有圆角）
    self.fscrollView.imgCornerRadius = 5;
    
    self.fscrollView.bannerScrolldelegate = self;
    [self.view addSubview:self.fscrollView];
    //图片数据
    [self.fscrollView setCarouseWithArray:@[@{@"image":@"http://a.hiphotos.baidu.com/image/pic/item/b7fd5266d01609240bcda2d1dd0735fae7cd340b.jpg"},@{@"image":@"http://h.hiphotos.baidu.com/image/pic/item/728da9773912b31b57a6e01f8c18367adab4e13a.jpg"},@{@"image":@"http://h.hiphotos.baidu.com/image/pic/item/0d338744ebf81a4c5e4fed03de2a6059242da6fe.jpg"}]];
    
}

- (FJBannerScrollView *)fscrollView {
    if (!_fscrollView) {
        _fscrollView = [[FJBannerScrollView alloc]initWithFrame:CGRectMake(0, 0, Kwidth, 160)];
    }
    return _fscrollView;
}

//点击事件
- (void)selectedIndex:(NSInteger)index {
    NSLog(@"%ld",(long)index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

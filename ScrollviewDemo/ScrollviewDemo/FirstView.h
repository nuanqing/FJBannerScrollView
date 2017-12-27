//
//  FirstView.h
//  ScrollviewDemo
//
//  Created by webplus on 17/12/19.
//  Copyright © 2017年 李Sir灬. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BannerViewDelegate <NSObject>

-(void)selectedIndex:(NSInteger)index;

@end

@interface FirstView : UIView
@property (nonatomic, assign) id<BannerViewDelegate> Bannerdelegate;

@property (nonatomic, strong) UIScrollView *scrollView;

@property (nonatomic, assign) CGFloat imgMargnPadding;

@property (nonatomic, assign) CGFloat imgEdgePadding;

@property (nonatomic, assign) CGFloat imgWidth;



-(void)setCarouseWithArray:(NSArray *)array;



//停止轮播定时器
-(void)invalidateTimer;


//开启定时器
-(void)fireTimer;

@end

//
//  UIView+Util.h
//  blurImage
//
//  Created by 李根 on 16/6/4.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Util)

- (void)setCornerRadius:(CGFloat)cornerRadius;
- (void)setBorderWidth:(CGFloat)width andColor:(UIColor *)color;

//  截图
- (UIImage *)convertViewToImage;
- (UIImage *)updateBLur;

@end

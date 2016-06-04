//
//  UIView+Util.m
//  blurImage
//
//  Created by 李根 on 16/6/4.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import "UIView+Util.h"
#import <GPUImage/GPUImage.h>

@implementation UIView (Util)

- (void)setCornerRadius:(CGFloat)cornerRadius {
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
}

- (void)setBorderWidth:(CGFloat)width andColor:(UIColor *)color {
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = width;
}

- (UIImage *)convertViewToImage {
    UIGraphicsBeginImageContext(self.bounds.size);
    [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:YES];
    UIImage *screenshot = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIImageWriteToSavedPhotosAlbum(screenshot, nil, nil, nil);
    return screenshot;
}

- (UIImage *)updateBLur {
    UIImage *screenshot = [self convertViewToImage];
    GPUImageiOSBlurFilter *blurFilter = [[GPUImageiOSBlurFilter alloc] init];
    blurFilter.saturation = 1.0;    //  saturation 饱和
    blurFilter.rangeReductionFactor = 0.1;  //  reduction 减少
    
    UIImage *blurImage = [blurFilter imageByFilteringImage:screenshot];
    
    return blurImage;
}



















@end

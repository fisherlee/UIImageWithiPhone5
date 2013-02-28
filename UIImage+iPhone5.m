//
//  UIImage+iPhone5.m
//  CSLCLottery
//
//  Created by 李伟 on 13-2-28.
//  Copyright (c) 2013年 CSLC. All rights reserved.
//

#import "UIImage+iPhone5.h"


@implementation  UIImage(iPhone5)

#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

+ (UIImage *)imageNamedWithiPhone5:(NSString *)name imageTyped:(NSString *)type 
{
    NSString *imgName = nil;
    if ([type length]==0) {
        type = @"png";
    }else
    {
        type = type;
    }
    if (iPhone5) {
        imgName = [NSString stringWithFormat:@"%@-ip5.%@",name, type];
    }else{
        imgName = [NSString stringWithFormat:@"%@.%@",name, type];
    }
    
    UIImage *image = [UIImage imageNamed:imgName];
    return image;
}

@end

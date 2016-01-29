//
//  MultiLanguage.h
//  YXWincall
//
//  Created by MacBook on 15/12/31.
//  Copyright © 2015年 xm. All rights reserved.
//


#define app_muti_language   @"hhhhhhhhhh"

#import <Foundation/Foundation.h>

@interface MultiLanguage : NSObject

+ (NSString*)mutilanguageForkey:(NSString*)key;

@end


#define mutiLanString(key)  [MultiLanguage mutilanguageForkey:key]
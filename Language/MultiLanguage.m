
//
//  MultiLanguage.m
//  YXWincall
//
//  Created by MacBook on 15/12/31.
//  Copyright © 2015年 xm. All rights reserved.
//

#import "MultiLanguage.h"

@implementation MultiLanguage

/*
 *多语言设置
 *type：0：简体中文；1：繁体中文；2：英语;3:跟随系统
 *
 */
+ (NSString*)mutilanguageForkey:(NSString*)key{
    
     NSInteger type =[[[NSUserDefaults standardUserDefaults] objectForKey:app_muti_language]integerValue];
    if(type == 3){
        return[self systemLanguageForkey:key];
    }else{
        
        return[self appLanguageForkey:key
                                index:type];
    }
    
    return nil;
}
/*
 *跟随系统语言-需要在Localizable.strings设置
 *
 */
+ (NSString*)systemLanguageForkey:(NSString*)key{
    
    return NSLocalizedString(key, nil);
}
/*
 *app语言设置-所有语言皆已字典保存
 *格式：key：@[语言]
 *说明：key-获取某个字符串的key，值是数组，保存要设置的多语言，以简体中文、繁体中文、英语的顺序格式保存
 */
+ (NSString*)appLanguageForkey:(NSString*)key index:(NSInteger)index{
    
    NSDictionary *dict = @{@"key":@[@"简体中文﹣app",@"繁体中文-app",@"英语-app"],
                           @"hello":@[@"好",@"耗",@"hel"]
                           };
    return [[dict objectForKey:key] objectAtIndex:index];
}

@end

//
//  ViewController.m
//  Language
//
//  Created by MacBook on 15/12/31.
//  Copyright © 2015年 xm. All rights reserved.
//

#import "ViewController.h"
#import "MultiLanguage.h"

@interface ViewController (){
    
    UILabel *text;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    text = [[UILabel alloc] init];
    text.frame = CGRectMake(100, 100, 100, 44);
    [self.view addSubview:text];
    
    UIButton *button = [[UIButton alloc] init];
    button.frame = CGRectMake(100, 150, 100, 44);
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(changeLanguage:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"系统" forState:UIControlStateNormal];
    button.tag = 3;
    [self.view addSubview:button];
    
    UIButton *button1 = [[UIButton alloc] init];
    button1.frame = CGRectMake(100, 200, 100, 44);
    button1.backgroundColor = [UIColor redColor];
    [button1 setTitle:@"简体中文" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(changeLanguage:) forControlEvents:UIControlEventTouchUpInside];
    button1.tag = 0;
    [self.view addSubview:button1];
    
    UIButton *button2 = [[UIButton alloc] init];
    button2.frame = CGRectMake(100, 250, 100, 44);
    button2.backgroundColor = [UIColor redColor];
    [button2 addTarget:self action:@selector(changeLanguage:) forControlEvents:UIControlEventTouchUpInside];
    [button2 setTitle:@"繁体中文" forState:UIControlStateNormal];
    button2.tag = 1;
    [self.view addSubview:button2];
    
    UIButton *button3 = [[UIButton alloc] init];
    button3.frame = CGRectMake(100, 300, 100, 44);
    button3.backgroundColor = [UIColor redColor];
    [button3 addTarget:self action:@selector(changeLanguage:) forControlEvents:UIControlEventTouchUpInside];
    [button3 setTitle:@"英语" forState:UIControlStateNormal];
    button3.tag = 2;
    [self.view addSubview:button3];
    
    
    
}

- (void)changeLanguage:(UIButton*)button{

    [[NSUserDefaults standardUserDefaults] setValue:[NSString stringWithFormat:@"%ld",(long)button.tag] forKey:app_muti_language];;
    
    
    text.text = mutiLanString(@"key");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

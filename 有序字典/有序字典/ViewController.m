//
//  ViewController.m
//  有序字典
//
//  Created by MAC on 15/9/11.
//  Copyright (c) 2015年 hczsiOS. All rights reserved.
//

#import "ViewController.h"
#import "JXOrderDictionary.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    JXOrderDictionary *orderDic = [JXOrderDictionary currentOrderDictionary];
    [orderDic setObject:@"郝敬学" forKey:@"123"];
    [orderDic setObject:@"李涛" forKey:@"456"];
    [orderDic setObject:@"林秀明" forKey:@"789"];
    
//    NSArray *arr =  [orderDic getAllValue];
//    for (NSString *str in arr) {
//        NSLog(@"%@",str);
//    }
    
  NSString *strr =  [orderDic valueForIndex:1];
    
     NSLog(@"%@",strr);
    
    
    
       
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  JXOrderDictionary.m
//  有序字典
//
//  Created by MAC on 15/9/12.
//  Copyright (c) 2015年 hczsiOS. All rights reserved.
//

#import "JXOrderDictionary.h"

@interface JXOrderDictionary()

@property (nonatomic,strong)NSMutableDictionary *oneDic;

@property (nonatomic,strong)NSMutableArray *dicArr;

@property (nonatomic,assign)int currentIndex;

@property (nonatomic,strong)NSMutableArray *backArr;

@end

@implementation JXOrderDictionary

+ (instancetype)currentOrderDictionary{

    static JXOrderDictionary *currentOrderDictionary = nil;
    if (currentOrderDictionary == nil) {
    
        currentOrderDictionary = [[JXOrderDictionary alloc]init];
    }

    return currentOrderDictionary;

}


- (instancetype)init{
    self = [super init];
    
    if (self) {
        
        self.currentIndex = 0;
    }

    return self;
}

- (NSMutableArray *)dicArr{
    if (_dicArr == nil) {
        _dicArr = [NSMutableArray array];
    }
    return _dicArr;

}

- (NSMutableDictionary *)oneDic{

    if (_oneDic == nil) {
        _oneDic = [NSMutableDictionary dictionary];
    }
    return _oneDic;
}

- (NSMutableArray *)backArr{
    if (_backArr == nil) {
        _backArr = [NSMutableArray array];
    }
    return _backArr;

}
- (void)setObject:(id)anObject forKey:(id<NSCopying>)aKey;
{
    
    NSString *currntIndex = [NSString stringWithFormat:@"%d",self.currentIndex];
    
    [self.oneDic setObject:anObject forKey:currntIndex];
    [self.dicArr addObject:aKey];
    
    self.currentIndex += 1;
    
}

- (id)valueForKey:(NSString *)key{
    
    int keyIndex = (int)[self.dicArr indexOfObject:key];
    
    NSString *keyIndexStr = [NSString stringWithFormat:@"%d",keyIndex];
    
   return  [self.oneDic valueForKey:keyIndexStr];
    
}

- (id)valueForIndex:(int)index{

    NSString *keyStr = [NSString stringWithFormat:@"%d",index];
    return  [self.oneDic valueForKey:keyStr];

}

- (NSMutableArray*)getAllValue{

    for (int i = 0; i < self.dicArr.count; i++) {
        
        NSString *keyIndex = [NSString stringWithFormat:@"%d",i];
       NSString *value = [self.oneDic valueForKey:keyIndex];
        [self.backArr addObject:value];
        
    }
    return self.backArr;

}




@end

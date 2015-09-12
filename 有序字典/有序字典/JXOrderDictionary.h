//
//  JXOrderDictionary.h
//  有序字典
//
//  Created by MAC on 15/9/12.
//  Copyright (c) 2015年 hczsiOS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JXOrderDictionary : NSObject

- (void)setObject:(id)anObject forKey:(id<NSCopying>)aKey;

- (id)valueForKey:(NSString *)key;

- (id)valueForIndex:(int)index;

- (NSMutableArray*)getAllValue;

+ (instancetype)currentOrderDictionary;


@end

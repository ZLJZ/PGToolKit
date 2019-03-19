//
//  NSArray+set.m
//  PanGu
//
//  Created by Security Pacific on 16/7/13.
//  Copyright © 2016年 Security Pacific Corporation. All rights reserved.
//

#import "NSArray+set.h"


@implementation NSArray (set)

-(id)objectNAtIndex:(NSUInteger)index{
    
    id object;
    
    if (index < self.count) {
        
        object = [self objectAtIndex:index];
        
        if ([object isKindOfClass:[NSNull class]]) {
//            P_Log(@"服务器又返回错误字段了");
        }
        
    }else{
        
        P_Log(@"数组越界");
        return @"";
        
    }
    
    return object;
}

@end

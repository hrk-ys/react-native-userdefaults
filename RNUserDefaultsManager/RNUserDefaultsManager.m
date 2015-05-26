//
//  RNUserDefaultsManager.m
//  RNUserDefaults
//
//  Created by Hiroki Yoshifuji on 2015/05/25.
//  Copyright (c) 2015年 Hiroki Yoshifuji. All rights reserved.
//

#import "RNUserDefaultsManager.h"

@implementation RNUserDefaultsManager

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(setObject:(id)value forKey:(NSString *)key findEvents:(RCTResponseSenderBlock)callback)
{
    [[NSUserDefaults standardUserDefaults] setObject:value forKey:key];
    callback(@[[NSNull null], @"success"]);
}

RCT_EXPORT_METHOD(objectForKey:(NSString *)key findEvents:(RCTResponseSenderBlock)callback)
{
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    
    if (value) {
        callback(@[ [NSNull null], value ]);
    } else {
        callback(@[ [NSNull null], [NSNull null] ]);
    }
}

RCT_EXPORT_METHOD(stringForKey:(NSString *)key findEvents:(RCTResponseSenderBlock)callback)
{
    NSString* value = [[NSUserDefaults standardUserDefaults] stringForKey:key];
    
    if (value) {
        callback(@[ [NSNull null], value ]);
    } else {
        callback(@[ [NSNull null], [NSNull null] ]);
    }
}

RCT_EXPORT_METHOD(arrayForKey:(NSString *)key findEvents:(RCTResponseSenderBlock)callback)
{
    NSArray* value = [[NSUserDefaults standardUserDefaults] arrayForKey:key];
    
    if (value) {
        callback(@[ [NSNull null], value ]);
    } else {
        callback(@[ [NSNull null], [NSNull null] ]);
    }
}


RCT_EXPORT_METHOD(removeObjectForKey:(NSString *)key callback:(RCTResponseSenderBlock)callback) {
    
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];
    
    callback(@[[NSNull null], @"success"]);
}


RCT_EXPORT_METHOD(setBool:(BOOL)value forKey:(NSString *)key findEvents:(RCTResponseSenderBlock)callback)
{
    [[NSUserDefaults standardUserDefaults] setBool:value forKey:key];
    callback(@[[NSNull null], @"success"]);
}

RCT_EXPORT_METHOD(boolForKey:(NSString *)key findEvents:(RCTResponseSenderBlock)callback)
{
    BOOL value = [[NSUserDefaults standardUserDefaults] boolForKey:key];
    callback(@[ [NSNull null], [NSNumber numberWithBool:value] ]);
}

@end

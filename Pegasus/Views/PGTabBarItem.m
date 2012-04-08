//
//  PGTabBarItem.m
//  Pegasus
//
//  Copyright 2012 Jonathan Ellis
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "PGTabBarItem.h"

@implementation PGTabBarItem

+ (id)internalViewWithAttributes:(NSDictionary *)attributes {
    NSString *systemItemStr = [[attributes objectForKey:@"systemItem"] lowercaseString];
    if (systemItemStr) {
        UITabBarSystemItem systemItem = [PGTranslators tabBarSystemItemWithString:systemItemStr];
        return [[UITabBarItem alloc] initWithTabBarSystemItem:systemItem tag:0];
    }
    
    return [[UITabBarItem alloc] init];
}

+ (NSString *)name {
    return @"tabbaritem";
}

+ (NSDictionary *)properties {
    NSMutableDictionary *properties =[NSMutableDictionary dictionaryWithObjectsAndKeys:
                                      @"*", @"systemItem",
                                      @"NSString", @"title",
                                      nil];
    
    return properties;
}

@end

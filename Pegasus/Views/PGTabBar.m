//
//  UITabBar.m
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

#import "PGTabBar.h"

@implementation PGTabBar

+ (id)internalViewWithAttributes:(NSDictionary *)attributes {
    return [[UITabBar alloc] init];
}

+ (NSString *)name {
    return @"tabbar";
}

+ (NSDictionary *)properties {
    
    NSMutableDictionary *properties =[NSMutableDictionary dictionaryWithObjectsAndKeys:
                                      @"items", @"NSArray", @"UIColor", @"backgroundColor", 
                                      nil];
    
    [properties addEntriesFromDictionary:[PGView properties]];
    
    return properties;
}

- (void)addSubview:(PGView *)subview {
    if ([subview isKindOfClass:[PGTabBarItem class]]) {
        
        UITabBar *tabbar = (UITabBar *)view;

        if (!tabbar.items) tabbar.items = [NSArray array];
        tabbar.items = [tabbar.items arrayByAddingObject:subview.view];
        
    } else {
        [super addSubview:subview];
    }
}


@end

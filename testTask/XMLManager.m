//
//  XMLManager.m
//  testTask
//
//  Created by Admin on 13.05.15.
//  Copyright (c) 2015 Stanislav Grinberg. All rights reserved.
//

#import "XMLManager.h"

@implementation XMLManager

+ (NSArray*)loadData {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"];

    NSArray *data = [[NSArray alloc] initWithContentsOfFile:path];
    
    return data;
}

@end

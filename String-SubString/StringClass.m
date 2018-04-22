//
//  StringClass.m
//  String-SubString
//
//  Created by Viktoryia Barzdyka on 4/19/18.
//  Copyright © 2018 Barzdyka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StringClass.h"

@implementation MyString

ParseString  parsedString = ^(NSString* text) {
    NSMutableArray *result = [[[NSMutableArray alloc] init] autorelease];

    NSDictionary *openedStack = @{
                                  @"(": [[[NSMutableArray alloc] init] autorelease],
                                  @"[": [[[NSMutableArray alloc] init] autorelease],
                                  @"<": [[[NSMutableArray alloc] init] autorelease]
                           };

    NSDictionary *invertedStack = @{
                             @")": @"(",
                             @"]": @"[",
                             @">": @"<"
                             };
    
    for (NSInteger i = 0; i < [text length]; i++){
        unichar curr = [text characterAtIndex:i];
        NSString *currectChar = [NSString stringWithCharacters:&curr length:1];
        
        if ([[openedStack allKeys] containsObject:currectChar]){
            [[openedStack objectForKey:currectChar] addObject:[NSNumber numberWithInt:i]];
            continue;
        }
        
        if ([[invertedStack allKeys] containsObject:currectChar]) {
            NSString *opened = [invertedStack objectForKey:currectChar];
            NSInteger startingIndex = [[[openedStack objectForKey:opened] lastObject] intValue];
            [[openedStack objectForKey:opened] removeObject:[[openedStack objectForKey:opened]lastObject]];
        
            [result addObject:[text substringWithRange: NSMakeRange(startingIndex + 1, i-startingIndex-1)]];
            continue;
        }
    }
    return result;
};

- (id) initWithText: (NSString*) text{
    self = [super init];
    if (self) {
        _inputField = text;
    }
    return self;
}

- (void) getOutput:(NSString*) value{
    NSLog(@"Array of substrings: %@", parsedString(value));
}

@end

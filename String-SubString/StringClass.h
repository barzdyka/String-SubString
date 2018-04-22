//
//  StringClass.h
//  String-SubString
//
//  Created by Viktoryia Barzdyka on 4/19/18.
//  Copyright © 2018 Barzdyka. All rights reserved.
//

typedef NSArray* (^ParseString)(NSString*);
@interface MyString: NSObject

@property (nonatomic, assign) NSString *inputField;
- (void) getOutput:(NSString*) value;
- (id) initWithText: (NSString*) text;

@end

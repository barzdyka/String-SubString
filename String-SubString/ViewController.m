//
//  ViewController.m
//  String-SubString
//
//  Created by Viktoryia Barzdyka on 4/19/18.
//  Copyright © 2018 Barzdyka. All rights reserved.
//

#import "ViewController.h"
#import "StringClass.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *textExample1 = @"Prime Minister <Narendra Modi> tweeted a <link> to the speech (Human Resource Development Minister Smriti Irani) <made> in the Lok Sabha during the ((debate) on the ongoing JNU row) and the suicide of Dalit scholar Rohith Vemula at the [Hyderabad Central University].";
    MyString *str1 = [[[MyString alloc] initWithText:textExample1] autorelease];
    [str1 getOutput:textExample1];
    
    NSString *textExample2 = @"Lorem <(ipsum [dolor <sit] amet), consectetur adipiscing elit>. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet>. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget (nulla. Class aptent <taciti [sociosqu ad] litora torquent per conubia> nostra), per inceptos himenaeos.";
    MyString *str2 = [[[MyString alloc] initWithText:textExample2] autorelease];
    [str2 getOutput:textExample2];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

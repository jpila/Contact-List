//
//  inputCollector.m
//  Contact List
//
//  Created by JOSE PILAPIL on 2016-06-28.
//  Copyright © 2016 JOSE PILAPIL. All rights reserved.
//

#import "inputCollector.h"

@implementation inputCollector



+(NSString *)inputForPrompt:(NSString *)promptString{
    NSLog(@"%@", promptString);
    char str[250];
    fgets(str,250,stdin);
    NSString *userinput = [[[NSString alloc]initWithUTF8String:str]stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return userinput;
}
@end

    


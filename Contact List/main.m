//
//  main.m
//  Contact List
//
//  Created by JOSE PILAPIL on 2016-06-28.
//  Copyright © 2016 JOSE PILAPIL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "inputCollector.h"
#import "Contact.h"
int main(int argc, const char * argv[]) {
    inputCollector *new =[[inputCollector alloc]init];
    int loopstarter = 1;
    while (loopstarter == 1){
    
    NSString *usernameInput = [inputCollector inputForPrompt:@"Enter your username"];
    
    
    NSLog(@"User has selected %@", usernameInput);
        NSString *lowercaseUser = [usernameInput lowercaseString];
        if ([lowercaseUser isEqualToString:@"quit\n"]){
            printf("Thank you for using Contact List");
            loopstarter = 2;
        }
    }
        return 0;
}

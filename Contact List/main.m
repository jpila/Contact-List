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
#import "ContactList.h"
int main(int argc, const char * argv[]) {
    Contact *person;
    ContactList *contactList =[[ContactList alloc]init];
    //trigger for loop
    int loopstarter = 1;
    while (loopstarter == 1){
        NSString *firstName;
        NSString *lastName;
        NSString *eMail;
        
        printf("What would you like to next?\nNew-Create new contact list. \nList-List All Contacts.\nQuit-Exit Application");
    NSString *usernameInput = [inputCollector inputForPrompt:@"Enter your username"];
    
    NSLog(@"User has selected %@", usernameInput);
      //method to accept all cases of entry
        NSString *lowercaseUser = [usernameInput lowercaseString];
        if ([lowercaseUser isEqualToString:@"quit\n"]){
            printf("Thank you for using Contact List");
            loopstarter = 2;
        }else if ([lowercaseUser isEqualToString:@"new\n"]){
            printf("Please enter your First Name");
            firstName = [inputCollector inputForPrompt:@""];
            person.firstName = firstName;
            printf("Please enter your last name");
            lastName = [inputCollector inputForPrompt:@""];
            person.lastName = lastName;
            printf("Please enter your e-mail");
            eMail = [inputCollector inputForPrompt:@""];
            person.eMail = eMail;
        [contactList addContact:person];
        }
        
    }
        return 0;
}

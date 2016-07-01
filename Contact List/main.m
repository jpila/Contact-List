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
    
    ContactList *listofContacts =[[ContactList alloc]init];
    //trigger for loop
    
    int loopstarter = 1;
    while (loopstarter == 1){
       
    NSString *usernameInput = [inputCollector inputForPrompt:@"What would you like to next?\nNew-Create new contact list. \nList-List All Contacts.\nQuit-Exit Application"];
    
    NSLog(@"User has selected %@", usernameInput);
      //method to accept all cases of entry
        NSString *lowercaseUser = [usernameInput lowercaseString];
        if ([lowercaseUser isEqualToString:@"quit"]){
            printf("Thank you for using Contact List");
            loopstarter = 2;
        }else if ([lowercaseUser isEqualToString:@"new"]){
            Contact *newPerson = [[Contact alloc]init];
            NSString *firstName = [inputCollector inputForPrompt:@"Please enter your First Name"];
            newPerson.firstName = firstName;
            NSString *lastName = [inputCollector inputForPrompt:@"Please enter your last name"];
            newPerson.lastName = lastName;
            NSString *eMail = [inputCollector inputForPrompt:@"Please enter your e-mail"];
            newPerson.eMail = eMail;
            [listofContacts addContact:newPerson];
        }else if ([lowercaseUser isEqualToString:@"list"]){
         [listofContacts displayContacts];
        }
    }
        return 0;
}

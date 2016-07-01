//
//  ContactList.m
//  Contact List
//
//  Created by JOSE PILAPIL on 2016-06-30.
//  Copyright © 2016 JOSE PILAPIL. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"
@implementation ContactList

-(void)addContact:(Contact *)newContact{
    [self.contactList addObject:newContact];
}


-(void)displayContacts{
    for (Contact *contact in self.contactList) {
        NSLog(@"%@ %@ %@", contact.firstName, contact.lastName, contact.eMail);
    }
}



-(instancetype)init{
    self = [super init];
    if (self) {
        _contactList = [[NSMutableArray alloc]init];
    }
    return self;
}
@end

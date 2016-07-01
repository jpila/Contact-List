//
//  ContactList.h
//  Contact List
//
//  Created by JOSE PILAPIL on 2016-06-30.
//  Copyright © 2016 JOSE PILAPIL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
@interface ContactList : NSObject

@property NSMutableArray *contactList;


-(void)displayContacts;
-(void)addContact:(Contact *)newContact;

@end

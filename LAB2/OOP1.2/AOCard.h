//
//  AOCard.h
//  OOP1.2
//
//  Created by media temp on 20/10/2014.
//  Copyright (c) 2014 AO. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AOCard : NSObject
@property(nonatomic, strong) NSString *suit;
@property(nonatomic, strong) NSString *value;
@property(nonatomic, weak)NSString *cardInDeck;

-(id) initWithSuit: (NSString*) suit value:(NSString*)value;
@end

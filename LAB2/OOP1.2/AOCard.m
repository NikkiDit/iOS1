//
//  AOCard.m
//  OOP1.2
//
//  Created by media temp on 20/10/2014.
//  Copyright (c) 2014 AO. All rights reserved.
//

#import "AOCard.h"

@implementation AOCard
-(id)initWithSuit: (NSString*) suit value:(NSString*) value{
    
    self = [super init];
    if(!self) {return nil;}
    _suit = suit;
    _value =value;
    return self;
}

-(NSString*)description{
    return [NSString stringWithFormat:@"%@%@", _suit, _value];
}
@end

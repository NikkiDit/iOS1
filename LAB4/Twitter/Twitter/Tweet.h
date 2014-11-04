//
//  Tweet.h
//  Twitter
//
//  Created by media temp on 04/11/2014.
//  Copyright (c) 2014 media temp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tweet : NSObject
@property(nonatomic,weak) NSString *name;
@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *avatarURL;
@property (nonatomic, strong) NSString *time;

@end

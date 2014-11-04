//
//  ViewController.m
//  Twitter
//
//  Created by media temp on 04/11/2014.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"
#import "Tweet.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITabBar *myUITabBar;

@property (weak, nonatomic) IBOutlet UITableViewCell *myUITableviewcell;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
}


void (^completionBlock)(AFHTTPRequestOperation *operation, id responseObject);{
    NSDictionary *jsonDictionary = (NSDictionary*)responseObject;
    Tweet *tweet     = [[Tweet alloc] init];
    tweet.name       = jsonDictionary[@"name"];
    tweet.username   = jsonDictionary[@"username"];
    tweet.text       = jsonDictionary[@"tweet"];
    tweet.avatarURL  = jsonDictionary[@"avatar"];
    tweet.time       = jsonDictionary[@"time"];
    
    [_tweets addObject:tweet];
}

@end


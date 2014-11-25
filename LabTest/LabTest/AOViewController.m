//
//  ViewController.m
//  LabTest
//
//  Created by Adenike Olatunji on 25/11/2014.
//  Copyright (c) 2014 AO. All rights reserved.
//

#import "AOViewController.h"
#import "InfoViewController.h"
#import "AFNetworking.h"
#import "AOTableViewCell.h"

@interface AOViewController ()

@end

@implementation AOViewController
static NSString *CellIdentifier = @"CellIdentifier";





-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"DisplayInfo"]){
        InfoViewController *infoView = segue.destinationViewController;
        
        AFHTTPRequestOperationManager *operationManager = [AFHTTPRequestOperationManager manager];
        
        [operationManager GET:@"https://raw.githubusercontent.com/zdavison/DIT.iOS1/master/Week4/sample.json"
                   parameters:nil
                      success:^(AFHTTPRequestOperation *operation, id responseObject) {
                       
                          NSDictionary *dictionary = (NSDictionary*)responseObject;
                          NSString *JSONResult = dictionary[@"ip"];
                         
                          [infoView.displayText setText: JSONResult];
                      }
                      failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                          NSLog(@"%@",error);
                      }];  }
    
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 5;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}




-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    return NO;
}
-(BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath{
    return NO;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    AOTableViewCell *cell = (AOTableViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure Cell
    [cell.mainLabel setText:[NSString stringWithFormat:@"Row %i in Section %i", [indexPath row], [indexPath section]]];
    
    return cell;
}
@end

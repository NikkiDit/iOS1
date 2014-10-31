//
//  ViewController.h
//  MultView
//
//  Created by media temp on 29/10/2014.
//  Copyright (c) 2014 AO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property(nonatomic, assign) id< UINavigationControllerDelegate > delegate;
@property(nonatomic, weak) IBOutlet UIButton *button1;
@property(nonatomic, weak) IBOutlet UIButton *button2;


-(IBAction)displayLabel:(id)sender;
@end

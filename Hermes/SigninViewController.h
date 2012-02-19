//
//  SigninViewController.h
//  Hermes
//
//  Created by Arthur Pang on 2/19/12.
//  Copyright (c) 2012 Northern Arizona University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SigninViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

- (IBAction)dismissKeyboard:(id)sender;

@end

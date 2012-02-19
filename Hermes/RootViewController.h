//
//  RootViewController.h
//  Hermes
//
//  Created by Arthur Pang on 2/2/12.
//  Copyright (c) 2012 Northern Arizona University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AddressBook/AddressBook.h>
#import <AddressBookUI/AddressBookUI.h>

@interface RootViewController : UIViewController <ABPeoplePickerNavigationControllerDelegate>

@property(nonatomic, strong) UIViewController *sendMoneyViewController;
@property(nonatomic, strong) UIViewController *transactionsViewController;
@property(nonatomic, strong) UIViewController *historyViewController;
@property(nonatomic, strong) UIViewController *localViewController;

@end

//
//  RootViewController.m
//  Hermes
//
//  Created by Arthur Pang on 2/2/12.
//  Copyright (c) 2012 Northern Arizona University. All rights reserved.
//

#import "RootViewController.h"
#import "SendMoneyViewController.h"
#import "TransactionsViewController.h"
#import "HistoryViewController.h"
#import "LocalViewController.h"

@implementation RootViewController

@synthesize sendMoneyViewController;
@synthesize transactionsViewController;
@synthesize historyViewController;
@synthesize localViewController;

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (BOOL)peoplePickerNavigationController:(ABPeoplePickerNavigationController *)peoplePicker shouldContinueAfterSelectingPerson:(ABRecordRef)person{
    return YES;
}

- (BOOL)peoplePickerNavigationController:(ABPeoplePickerNavigationController *)peoplePicker shouldContinueAfterSelectingPerson:(ABRecordRef)person property:(ABPropertyID)property identifier:(ABMultiValueIdentifier)identifier{
    return YES;
}

- (void)peoplePickerNavigationControllerDidCancel:(ABPeoplePickerNavigationController *)peoplePicker{
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //sendMoneyViewController = [[SendMoneyViewController alloc] initWithNibName:@"SendMoneyViewController" bundle:nil];
    NSLog(@"view did load");
    ABPeoplePickerNavigationController *picker = [[ABPeoplePickerNavigationController alloc] init];
    picker.peoplePickerDelegate = self;
    // Display only a person's phone, email, and birthdate
	NSArray *displayedItems = [NSArray arrayWithObjects:[NSNumber numberWithInt:kABPersonPhoneProperty], 
                               [NSNumber numberWithInt:kABPersonEmailProperty],
                               [NSNumber numberWithInt:kABPersonBirthdayProperty], nil];
	
	
	picker.displayedProperties = displayedItems;
	// Show the picker 
	//[self presentModalViewController:picker animated:YES];
    /*
    
    transactionsViewController = [[TransactionsViewController alloc] initWithNibName:@"TransactionsViewController" bundle:nil];
    historyViewController = [[HistoryViewController alloc] initWithNibName:@"HistoryViewController" bundle:nil];
    localViewController = [[LocalViewController alloc] initWithNibName:@"LocalViewController" bundle:nil];
    
    // Create an array of SEMenuItem objects
    NSMutableArray *items = [NSMutableArray array];
    [items addObject:[SEMenuItem initWithTitle:@"Send Money" imageName:@"sendMoney.png" viewController:picker]];
    [items addObject:[SEMenuItem initWithTitle:@"Transactions" imageName:@"pendingTransactions.png" viewController:transactionsViewController]];
    [items addObject:[SEMenuItem initWithTitle:@"History" imageName:@"history.png" viewController:historyViewController]];
    [items addObject:[SEMenuItem initWithTitle:@"Local Deals" imageName:@"localDeals.png" viewController:localViewController]];
    
    // Pass the array to a newly created SESpringBoard and add it to your view.
    // The launcher image is the image for the button on the top left corner of the view controller that is gonna appear in the screen
    // after a SEMenuItem is tapped. It is used for going back to the home screen
    
    SESpringBoard *board = [SESpringBoard initWithTitle:@"Hermes Commerce" items:items launcherImage:[UIImage imageNamed:@"navbtn_home.png"]];
    [self.view addSubview:board];
    */
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end

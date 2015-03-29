//
//  ViewController.m
//  Test
//
//  Created by Jorge Luis Mendez on 2/13/15.
//  Copyright (c) 2015 Jorge Luis Mendez. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import "UIActionSheet+Additions.h"

@interface ViewController () <UIActionSheetDelegate>
@end

@implementation ViewController

- (void)showActionSheetWithItems:(NSArray *)items
{
    UIActionSheet *as = [[UIActionSheet alloc] initWithItems:items delegate:self];
    [as showInView:self.view];
}

- (IBAction)showActionSheetOne:(id)sender
{
    NSArray *actionSheetItems = @[ @{ @"Sheet 1 - action 1" : NSStringFromSelector(@selector(sheet1Action1)) },
                                   @{ @"Sheet 1 - action 2" : NSStringFromSelector(@selector(sheet1Action2)) },
                                   @{ @"Sheet 1 - action 3" : NSStringFromSelector(@selector(sheet1Action3)) },
                                   @{ @"Cancel" : [NSNull null] } ];
    [self showActionSheetWithItems:actionSheetItems];
}

- (IBAction)showActionSheetTwo:(id)sender
{

    NSArray *actionSheetItems = @[ @{ @"Sheet 2 - action 1" : NSStringFromSelector(@selector(sheet2Action1)) },
                                   @{ @"Sheet 2 - action 2" : NSStringFromSelector(@selector(sheet2Action2)) },
                                   @{ @"Cancel" : [NSNull null] } ];
    [self showActionSheetWithItems:actionSheetItems];
}

- (IBAction)showActionSheetThree:(id)sender
{

    NSArray *actionSheetItems = @[ @{ @"Sheet 3 - action 1" : NSStringFromSelector(@selector(sheet3Action1)) },
                                   @{ @"Sheet 3 - action 2" : NSStringFromSelector(@selector(sheet3Action2)) },
                                   @{ @"Sheet 3 - action 3" : NSStringFromSelector(@selector(sheet3Action3)) },
                                   @{ @"Sheet 3 - action 4" : NSStringFromSelector(@selector(sheet3Action4)) },
                                   @{ @"Cancel" : [NSNull null] } ];
    [self showActionSheetWithItems:actionSheetItems];
}

- (void)sheet1Action1
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                    message:NSStringFromSelector(_cmd)
                                                   delegate:nil
                                          cancelButtonTitle:@"Ok"
                                          otherButtonTitles:nil];
    [alert show];
}

- (void)sheet1Action2
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                    message:NSStringFromSelector(_cmd)
                                                   delegate:nil
                                          cancelButtonTitle:@"Ok"
                                          otherButtonTitles:nil];
    [alert show];
}

- (void)sheet1Action3
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                    message:NSStringFromSelector(_cmd)
                                                   delegate:nil
                                          cancelButtonTitle:@"Ok"
                                          otherButtonTitles:nil];
    [alert show];
}

- (void)sheet2Action1
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                    message:NSStringFromSelector(_cmd)
                                                   delegate:nil
                                          cancelButtonTitle:@"Ok"
                                          otherButtonTitles:nil];
    [alert show];
}

- (void)sheet2Action2
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                    message:NSStringFromSelector(_cmd)
                                                   delegate:nil
                                          cancelButtonTitle:@"Ok"
                                          otherButtonTitles:nil];
    [alert show];
}

- (void)sheet3Action1
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                    message:NSStringFromSelector(_cmd)
                                                   delegate:nil
                                          cancelButtonTitle:@"Ok"
                                          otherButtonTitles:nil];
    [alert show];
}

- (void)sheet3Action2
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                    message:NSStringFromSelector(_cmd)
                                                   delegate:nil
                                          cancelButtonTitle:@"Ok"
                                          otherButtonTitles:nil];
    [alert show];
}

- (void)sheet3Action3
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                    message:NSStringFromSelector(_cmd)
                                                   delegate:nil
                                          cancelButtonTitle:@"Ok"
                                          otherButtonTitles:nil];
    [alert show];
}

- (void)sheet3Action4
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                    message:NSStringFromSelector(_cmd)
                                                   delegate:nil
                                          cancelButtonTitle:@"Ok"
                                          otherButtonTitles:nil];
    [alert show];
}

@end

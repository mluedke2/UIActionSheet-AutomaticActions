//
//  UIActionSheet+AutomaticActions.h
//  Test
//
//  Created by Jorge Luis Mendez on 2/13/15.
//  Copyright (c) 2015 Jorge Luis Mendez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIActionSheet (AutomaticActions)

/**
 *  Initializes an UIActionSheet were the callbacks h
 *
 *  @param items    An array of "actions". Each action is a NSDictionary of the form @{ NSString : Selector as NSString }
 *  @param delegate A delegate that responds to the selectors passed in the items array.
 *
 *  @return An UIActionSheet that you only have to present and it'll call the right selector.
 */
- (instancetype)jlm_initWithItems:(NSArray *)items
                         delegate:(id)delegate;

@end

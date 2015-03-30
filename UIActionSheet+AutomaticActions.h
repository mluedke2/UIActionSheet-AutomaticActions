//
//  UIActionSheet+AutomaticActions.h
//  Test
//
//  Created by Jorge Luis Mendez on 2/13/15.
//  Copyright (c) 2015 Jorge Luis Mendez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIActionSheet (AutomaticActions)

- (instancetype)jlm_initWithItems:(NSArray *)items
                         delegate:(id)delegate;

@end

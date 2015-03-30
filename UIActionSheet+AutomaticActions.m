//
//  UIActionSheet+AutomaticActions.m
//  Test
//
//  Created by Jorge Luis Mendez on 2/13/15.
//  Copyright (c) 2015 Jorge Luis Mendez. All rights reserved.
//

#import "UIActionSheet+AutomaticActions.h"
#import <objc/runtime.h>

static void *kAOActionSheetItems = "kAOActionSheetItems";
static void *kAOActionSheetDelegate = "kAOActionSheetDelegate";

@interface UIActionSheet () <UIActionSheetDelegate>
@end

@implementation UIActionSheet (AutomaticActions)

- (instancetype)jlm_initWithItems:(NSArray *)items
                         delegate:(id)delegate
{
    UIActionSheet *as = [[UIActionSheet alloc] init];
    as.delegate = as;

    for (NSDictionary *sheetItem in items) {
        NSString *title = [[sheetItem allKeys] firstObject];
        [as addButtonWithTitle:title];
    }
    as.cancelButtonIndex = items.count - 1;

    objc_setAssociatedObject(as,
                             kAOActionSheetItems,
                             items,
                             OBJC_ASSOCIATION_RETAIN);

    objc_setAssociatedObject(as,
                             kAOActionSheetDelegate,
                             delegate,
                             OBJC_ASSOCIATION_ASSIGN);
    return as;
}

- (void)sheetActionWithIndex:(NSInteger)buttonIndex
{
    id delegate = objc_getAssociatedObject(self, kAOActionSheetDelegate);
    if (!delegate) {
        return;
    }

    NSArray *items = objc_getAssociatedObject(self, kAOActionSheetItems);
    NSString *selectorString = [[items[buttonIndex] allValues] firstObject];

    if (![selectorString isEqual:[NSNull null]]) {
        SEL selector = NSSelectorFromString(selectorString);
        if (selector) {
//http://stackoverflow.com/a/7933931/546719
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            [delegate performSelector:selector];
#pragma clang diagnostic pop
        }
    }
}

#pragma < UIActionSheetDelegate >
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    [self sheetActionWithIndex:buttonIndex];
}

@end

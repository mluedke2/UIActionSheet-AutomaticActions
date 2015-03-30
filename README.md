# UIActionSheet+AutomaticActions
Experimental UIActionSheet category that always invokes the correct action. See my [personal blog](http://jlmendezbonini.com/2015/03/25/UIActionSheet+AutomaticActions.html) for detailed description of the implementation.

## Installation

UIActionSheet+AutomaticActions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "UIActionSheet+AutomaticActions"
```

##Usage

Create and array of `actions`. Each `action` is represented as a `NSDictionary` object in the form: `@{ NSString : selector as NSString }`.

```objc
NSArray *actionSheetItems = @[ @{ @"Action 1" : NSStringFromSelector(@selector(sheet1Action1)) },
                               @{ @"Action 2" : NSStringFromSelector(@selector(sheet1Action2)) },
                               @{ @"Action 3" : NSStringFromSelector(@selector(sheet1Action3)) },
                               @{ @"Cancel" : [NSNull null] } ];
```

Instantiate an `UIActionSheet` using `-initWithItems:delegate` and show as usual.

```objc
UIActionSheet *as = [[UIActionSheet alloc] initWithItems:items delegate:self];
[as showInView:self.view];
```

##UIActionSheet deprecated in iOS 8+
Good discussion at [NSHipster](http://nshipster.com/uialertcontroller/) about the use of the new [`UIAlertController`](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIAlertController_class/) instead of `UIActionSheet`


## Author

Jorge Luis Mendez, jlmendezbonini@gmail.com

// 
// FSStoryboardBridgePushSegue.m
// 
// The MIT License (MIT)
// 
// Copyright (c) 2013 FocalShift
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy of
// this software and associated documentation files (the "Software"), to deal in
// the Software without restriction, including without limitation the rights to
// use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
// the Software, and to permit persons to whom the Software is furnished to do so,
// subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
// FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
// COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
// IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
// CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
// 

#import <FSStoryboardHelpers/FSStoryboardBridgePushSegue.h>
#import <FSClassExtensions/UIStoryboard+FSClassExtensions.h>

@implementation FSStoryboardBridgePushSegue

- (id)initWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(UIViewController *)destination {
    if (identifier) {
        UIStoryboard *storyboard = [UIStoryboard deviceSpecificStoryboardWithName:identifier bundle:nil];
        // We are not using the destination that was originally hooked up.
        destination = [storyboard instantiateInitialViewController];
    }

    self = [super initWithIdentifier:identifier source:source destination:destination];
    if (self) {
        // Initialize further.
        _unwinding = NO;
    }
    return self;
}

- (void)perform {
    if (self.isUnwinding) {
        UINavigationController *navController = [[self sourceViewController] navigationController];
        [navController popToViewController:[self destinationViewController] animated:YES];
    }
    else {
        UINavigationController *navController = [[self sourceViewController] navigationController];
        [navController pushViewController:[self destinationViewController] animated:YES];
    }
}

@end

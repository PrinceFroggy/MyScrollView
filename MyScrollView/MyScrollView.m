//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Andrew Solesa on 2017-03-20.
//  Copyright © 2017 KSG. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView ()

@property (strong, nonatomic) UIPanGestureRecognizer *panRecognizer;

@end

@implementation MyScrollView

- (void)handlePan:(UIPanGestureRecognizer *)recognizer
{
    if (recognizer.state == UIGestureRecognizerStateChanged)
    {
        
    }
}

@end

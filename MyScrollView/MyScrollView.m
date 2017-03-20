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

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    _panRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
    
    [self addGestureRecognizer:self.panRecognizer];
    
    return self;
}

- (void)handlePan:(UIPanGestureRecognizer *)recognizer
{
    if (recognizer.state == UIGestureRecognizerStateChanged)
    {
        CGPoint translation = [recognizer translationInView:self];
        
        [self setBounds:CGRectMake(-translation.x, -translation.y, self.frame.size.width, self.frame.size.height)];
    }
}

@end

//
//  ViewController.m
//  MyScrollView
//
//  Created by Andrew Solesa on 2017-03-20.
//  Copyright © 2017 KSG. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet MyScrollView *containerView;
@property (weak, nonatomic) IBOutlet UIView *redBox;
@property (weak, nonatomic) IBOutlet UIView *greenBox;
@property (weak, nonatomic) IBOutlet UIView *blueBox;
@property (weak, nonatomic) IBOutlet UIView *yellowBox;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.containerView.contentSize = CGSizeMake(self.view.bounds.size.width, 1000);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    //[self.containerView setBounds:CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height)];
}

@end

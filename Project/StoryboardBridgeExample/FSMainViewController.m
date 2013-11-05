//
//  FSMainViewController.m
//  StoryboardBridgeExample
//
//  Created by Bennett Smith on 11/5/13.
//  Copyright (c) 2013 FocalShift, LLC. All rights reserved.
//

#import "FSMainViewController.h"

@interface FSMainViewController ()

@end

@implementation FSMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)unwindFromModalView:(UIStoryboardSegue *)unwindSegue {
    
}

@end

//
//  ViewController.m
//  sampleScroll
//
//  Created by ValueLabs on 13/12/13.
//  Copyright (c) 2013 Valuelabs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.scrollView.frame = CGRectMake(0, 0, 320, 250);
    self.scrollView.contentSize = CGSizeMake(980, 250);
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

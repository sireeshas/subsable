//
//  ViewController.m
//  DeleteThis
//
//  Created by Sireesha on 18/09/13.
//  Copyright (c) 2013 valuelabs. All rights reserved.
//

#import "ViewController.h"
#import "PatientDetailsViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    lAppDelegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnAction:(id)sender {
    
    PatientDetailsViewController *pateintDetails = [[PatientDetailsViewController alloc]initWithNibName:@"PatientDetailsViewController" bundle:nil];
    [lAppDelegate setPatientDetailsViewController:pateintDetails];
    [self.navigationController pushViewController:lAppDelegate.patientDetailsViewController animated:NO];
}
@end

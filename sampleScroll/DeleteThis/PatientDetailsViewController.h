//
//  PatientDetailsViewController.h
//  DeleteThis
//
//  Created by Sireesha on 18/09/13.
//  Copyright (c) 2013 valuelabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PatientDetailsViewController : UITableViewController
@property (strong, nonatomic) IBOutlet UITableViewCell *patientDetailsTableViewCell;
@property (strong, nonatomic) IBOutlet UITableView *patientDetailsTableView;
@property (weak, nonatomic) IBOutlet UIImageView *patientImage;
@property (weak, nonatomic) IBOutlet UILabel *patientName;
@property (weak, nonatomic) IBOutlet UILabel *appointmentTime;
@property (weak, nonatomic) IBOutlet UILabel *cause;
@property (weak, nonatomic) IBOutlet UILabel *patientId;

@end

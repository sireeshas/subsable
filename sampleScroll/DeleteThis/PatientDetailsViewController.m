//
//  PatientDetailsViewController.m
//  DeleteThis
//
//  Created by Sireesha on 18/09/13.
//  Copyright (c) 2013 valuelabs. All rights reserved.
//

#import "PatientDetailsViewController.h"

@interface PatientDetailsViewController ()
@property (strong ,nonatomic) NSMutableArray *patientDetailsArray;

@end

@implementation PatientDetailsViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    _patientDetailsArray = [[NSMutableArray alloc]initWithObjects:[[NSMutableArray alloc]initWithObjects:@"",@"",@"", nil], [[NSMutableArray alloc]initWithObjects:@"Jennis",@"Rocky",@"Sandy", nil],[[NSMutableArray alloc]initWithObjects:@"10:45 P.M",@"09:00 A.M",@"12:00 P.M", nil],[[NSMutableArray alloc]initWithObjects:@"Arm",@"Leg pain",@"Fever", nil],[[NSMutableArray alloc]initWithObjects:@"3 Exam",@"2 Exam",@"1 Exam", nil],nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    NSLog(@"pat%@",self.patientDetailsArray);
    return [[self.patientDetailsArray objectAtIndex:0]count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 120;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        
        [[NSBundle mainBundle] loadNibNamed:@"PatientDetailsTableViewCell" owner:self options:nil];
        cell = _patientDetailsTableViewCell;
        self.patientDetailsTableViewCell = nil;
    }
    
    // Configure the cell...
    self.patientImage.image = [UIImage imageNamed:[[self.patientDetailsArray objectAtIndex:0]objectAtIndex:indexPath.row]];
    self.patientName.text = [[self.patientDetailsArray objectAtIndex:1]objectAtIndex:indexPath.row];
    self.appointmentTime.text = [[self.patientDetailsArray objectAtIndex:2]objectAtIndex:indexPath.row];
    self.cause.text = [[self.patientDetailsArray objectAtIndex:3]objectAtIndex:indexPath.row];
    self.patientId.text = [[self.patientDetailsArray objectAtIndex:4]objectAtIndex:indexPath.row];
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end

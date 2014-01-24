//
//  AppDelegate.h
//  DeleteThis
//
//  Created by Sireesha on 18/09/13.
//  Copyright (c) 2013 valuelabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;
@class PatientDetailsViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    
    UINavigationController *navg;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;
@property (strong, nonatomic) PatientDetailsViewController *patientDetailsViewController;


@end

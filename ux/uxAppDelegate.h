//
//  uxAppDelegate.h
//  ux
//
//  Created by tasuke on 11/08/24.
//  Copyright 2011 hatch2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface uxAppDelegate : NSObject <UIApplicationDelegate> {
    IBOutlet UITextField* longtext;
    IBOutlet UIButton *shorturlBTN;
    IBOutlet UIButton *infoBTN;
}

- (IBAction)shorturlBTNA:(id)sender;
- (IBAction)longurlboxOUTA:(id)sender;
- (IBAction)infoBTNA:(id)sender;

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

//
//  uxAppDelegate.m
//  ux
//
//  Created by tasuke on 11/08/24.
//  Copyright 2011 hatch2. All rights reserved.
//

#import "uxAppDelegate.h"

@implementation uxAppDelegate


@synthesize window=_window;


- (IBAction)shorturlBTNA:(id)sender {
    if([longtext.text length] == 0) {
        UIAlertView *alertview = [[UIAlertView alloc]
                                  initWithTitle:@"ux.nu"
                                  message:@"URLが入力されていません"
                                  delegate:nil
                                  cancelButtonTitle:@"OK"
                                  otherButtonTitles:nil
                                  ];
        [alertview show];
        [alertview release];
        return;
    }
    //[longtext resignFirstResponder];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://ux.nu/api/short?url=%@&format=plain",longtext.text]]];
    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    NSString *json_string = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
    
    if([json_string length] == 0) {
        UIAlertView *alertview = [[UIAlertView alloc]
                                  initWithTitle:@"ux.nu"
                                  message:@"URLのフォーマットが正しくありません"
                                  delegate:nil
                                  cancelButtonTitle:@"OK"
                                  otherButtonTitles:nil
                                  ];
        [alertview show];
        [alertview release];
        return;
    }
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: [NSString stringWithFormat:@"twitter://post?message=%@",json_string]]];
}

- (IBAction)longurlboxOUTA:(id)sender {
    //[longtext resignFirstResponder];
}

- (IBAction)infoBTNA:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://ux.nu/"]];
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [longtext becomeFirstResponder];
    [self.window makeKeyAndVisible];
    return YES;
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    if(!url && !url.host) {
        UIAlertView* alert = [[[UIAlertView alloc] init] autorelease];
        alert.message = @"URLのフォーマットが正しくありません";
        [alert addButtonWithTitle:@"ok"];
        [alert show];
        return NO;   
    }else {
        longtext.text = url.host;
        return YES;
    }
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    
    [longtext becomeFirstResponder];
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    [longtext becomeFirstResponder];
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    
    [longtext becomeFirstResponder];
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    
    [longtext becomeFirstResponder];
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    
    [longtext becomeFirstResponder];
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

@end

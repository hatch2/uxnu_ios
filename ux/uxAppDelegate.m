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
    [UIApplication sharedApplication].networkActivityIndicatorVisible=YES;
    
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
    
    NSString *escapedUrlString = [longtext.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://ux.nu/api/short?url=%@&format=plain",escapedUrlString]]];
    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    NSString *json_string = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
    [UIApplication sharedApplication].networkActivityIndicatorVisible=NO;
    if([json_string length] == 0) {
        UIAlertView *alertview = [[UIAlertView alloc]
                                  initWithTitle:@"ux.nu"
                                  message:@"URLが正しくありません"
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
        alert.message = @"URLが正しくありません";
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
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    [longtext becomeFirstResponder];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    
    [longtext becomeFirstResponder];
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    
    [longtext becomeFirstResponder];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    
    [longtext becomeFirstResponder];
}

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

@end

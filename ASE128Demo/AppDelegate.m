//
//  AppDelegate.m
//  ASE128Demo
//
//  Created by zhenghaishu on 11/11/13.
//  Copyright (c) 2013 zhenghaishu. All rights reserved.
//

#import "AppDelegate.h"
#import "AES128Util.h"
#import "NSData+ASE128.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    NSString *plainText = @"I love Beijing:) 海树";
    NSString *key = @"my key";
    NSString *encryStr = [AES128Util AES128Encrypt:plainText key:key];
    NSLog(@"encryStr: %@", encryStr);
    NSString *decryStr = [AES128Util AES128Decrypt:encryStr key:key];
    NSLog(@"decryStr: %@", decryStr);
    
    plainText = @"another encrypt test";
    key = @"another key";
    NSData *originData = [plainText dataUsingEncoding:NSUTF8StringEncoding];
    NSLog(@"originData: %@", originData);
    NSData *encryData = [originData AES128EncryptWithKey:key];
    NSLog(@"encryData: %@", encryData);
    NSData *decryData = [encryData AES128DecryptWithKey:key];
    NSLog(@"decryData: %@", decryData);
    decryStr = [[NSString alloc] initWithData:decryData encoding:NSUTF8StringEncoding];
    NSLog(@"decryStr: %@", decryStr);
    [decryStr release];
    
    return YES;
}

@end

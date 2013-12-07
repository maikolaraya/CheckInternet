//
//  InternetConnection.m
//  LoadingExample
//
//  Created by Maikol Araya on 12/7/13.
//  Copyright (c) 2013 La Creativeria. All rights reserved.
//

#import "InternetConnection.h"
#import "Reachability.h"

@implementation InternetConnection

- (BOOL) getConnectivity{
    return [[Reachability reachabilityWithHostName:@"google.com"] currentReachabilityStatus] != NotReachable;
    
}
- (BOOL) getConnectivityViaWiFiNetwork{
        return [[Reachability reachabilityWithHostName:@"google.com"] currentReachabilityStatus] != ReachableViaWiFi;
    
}
- (BOOL)getConnectivityViaDataNetwork{
            return [[Reachability reachabilityWithHostName:@"google.com"] currentReachabilityStatus] != ReachableViaWWAN;
    
}















@end

//
//  InternetConnection.h
//  LoadingExample
//
//  Created by Maikol Araya on 12/7/13.
//  Copyright (c) 2013 La Creativeria. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InternetConnection : NSObject


- (BOOL) getConnectivity;
- (BOOL) getConnectivityViaWiFiNetwork;
- (BOOL)getConnectivityViaDataNetwork;

@end

//
//  ViewController.h
//  LoadingExample
//
//  Created by Maikol Araya on 12/7/13.
//  Copyright (c) 2013 La Creativeria. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InternetConnection.h"

@interface ViewController : UIViewController{
    InternetConnection *checkInternet;
}

@property (nonatomic, strong) InternetConnection *checkInternet;
- (IBAction)loadingButton:(id)sender;

@end

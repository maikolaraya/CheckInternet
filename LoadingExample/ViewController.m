//
//  ViewController.m
//  LoadingExample
//
//  Created by Maikol Araya on 12/7/13.
//  Copyright (c) 2013 La Creativeria. All rights reserved.
//

#import "ViewController.h"
#import "DejalActivityView.h"
#import "WBErrorNoticeView.h"
#import "WBSuccessNoticeView.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize checkInternet;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    checkInternet = [[InternetConnection alloc] init];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loadingButton:(id)sender {
    //[DejalBezelActivityView activityViewForView:self.view withLabel:@"Cargando..."];
   // [self removeActivityView];
    
    
    //Presentar el alert view
    
    if ([checkInternet getConnectivity]) {
        WBSuccessNoticeView *noticeSuccess = [WBSuccessNoticeView successNoticeInView:self.view title:@"Si hay internet!"];
        
        [noticeSuccess show];
        
    }
    else {
        WBErrorNoticeView *notice = [WBErrorNoticeView errorNoticeInView:self.view title:@"ERROR" message:@"No hay conexión a internet!"];
        
//        notice.alpha = 0.5;
        [notice show];
    }
    

    
    
}

-(void) removeActivityView {
    [DejalBezelActivityView removeViewAnimated:YES];
    [[self class] cancelPreviousPerformRequestsWithTarget:self];
}

























@end

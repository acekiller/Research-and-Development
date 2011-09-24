//
//  iPhoneViewController.m
//  ObjDetection
//
//  Created by Eng. Jorge Paiz on 9/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iPhoneViewController.h"
#import "CameraCaptureManager.h"


@implementation iPhoneViewController


@synthesize camPreviewView = _camPreviewView;
@synthesize captureManager = _captureManager;
@synthesize imageView      = _imageView;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    self.camPreviewView = nil;
    self.captureManager = nil;
    self.imageView      = nil;
}

-(void)dealloc
{
    [self.camPreviewView release];
    [self.captureManager release];
    [self.imageView      release];
    
    [super dealloc];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.captureManager = [[CameraCaptureManager alloc] initWithView:self.camPreviewView];
}

@end
//
//  ColorViewController.m
//  RevealControllerStoryboardExample
//
//  Created by Nick Hodapp on 1/9/13.
//  Copyright (c) 2013 CoDeveloper. All rights reserved.
//

#import "ColorViewController.h"

@interface ColorViewController ()
@property (nonatomic) IBOutlet UIBarButtonItem* revealButtonItem;
@end

@implementation ColorViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.revealButtonItem setTarget: self.revealViewController];
    [self.revealButtonItem setAction: @selector( revealToggle: )];
    [self.navigationController.navigationBar addGestureRecognizer: self.revealViewController.panGestureRecognizer];
    
    _label.text = _text;
    _label.textColor = _color;
}

@end

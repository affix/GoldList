//
//  DetailViewController.m
//  GoldList
//
//  Created by Keiran Smith on 28/10/2012.
//  Copyright (c) 2012 Keiran Smith. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = serverName;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"Accessed Detail View %@", serverName);
    [[self navigationItem] setTitle:serverName];
    NSLog(@"%@", serverGold);
    
    if([serverGold intValue] != 0)
    {
        [_gold setText:@"GOLD"];
    }
    else
    {
        [_gold setText:@"NOT GOLD"];
    }
    [_connection setText:[NSString stringWithFormat:@"%@:%@", serverv4, serverPort]];
    [_mode setText:serverMode];
    [_description setText:serverDescription];
    [_players setText:[NSString stringWithFormat:@"%@/%@", serverCurrent, serverMax]];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

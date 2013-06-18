//
//  DetailViewController.m
//
//  Created by Keiran Smith on 27/10/2012.
//  Copyright (c) 2013 Keiran Smith. All rights reserved.
//  This file is part of GoldList.
//
//  GoldList is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  GoldList is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License

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
    
    /* Font Setups :) */
    [_playerLabel setFont:[UIFont fontWithName:@"uni 05_53" size:20]];
    [_descriptionLabel setFont:[UIFont fontWithName:@"uni 05_53" size:20]];
    [_modeLabel setFont:[UIFont fontWithName:@"uni 05_53" size:20]];
    [_connectionLabel setFont:[UIFont fontWithName:@"uni 05_53" size:20]];
    
    [_gold setFont:[UIFont fontWithName:@"uni 05_53" size:40]];
    [_mode setFont:[UIFont fontWithName:@"uni 05_53" size:15]];
    [_connection setFont:[UIFont fontWithName:@"uni 05_53" size:15]];
    [_description setFont:[UIFont fontWithName:@"uni 05_53" size:15]];
    [_players setFont:[UIFont fontWithName:@"uni 05_53" size:15]];
    
    if([serverGold intValue] != 0)
    {
        [_gold setText:@"GOLD"];
        [_gold setTextColor:[UIColor yellowColor]];
    }
    else
    {
        [_gold setText:@"NOT GOLD"];
        [_gold setTextColor:[UIColor redColor]];
    }
    
    [_connection setText:[NSString stringWithFormat:@"%@:%@", serverv4, serverPort]];
    [_mode setText:serverMode];
    [_description setText:serverDescription];
    [_players setText:[NSString stringWithFormat:@"%@/%@", serverCurrent, serverMax]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

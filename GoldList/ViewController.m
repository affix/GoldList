//
//  ViewController.m
//  GoldList
//
//  Created by Keiran Smith on 27/10/2012.
//  Copyright (c) 2012 Keiran Smith. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    SBJSON *parser = [[SBJSON alloc] init]; // Initialize and Allocate the JSON CLass
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://api.kag2d.com/servers/full/0/empty/0"]]; //Define URL Request
    
    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil]; //Retreive from URL Request
    
    NSString *json_string = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding]; // CReate JSON String
    
    servers = [parser objectWithString:json_string error:nil]; // Parse JSON
    
    // This for loop counts the total number of servers in the serverList JSON Object
    for(NSArray *server in [servers valueForKey:@"serverList"])
    {
        count++;
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [servers count];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ServerCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    serverList = [servers valueForKey:@"serverList"];
    
    serverCell = [serverList objectAtIndex:indexPath.row];
    
    cell.textLabel.text =[serverCell valueForKey:@"serverName"];
    cell.detailTextLabel.text = [serverCell valueForKey:@"gameMode"];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Get the Server Details
    serverCell = [serverList objectAtIndex:indexPath.row];

    // setup Server Vatiables from globalVar.h
    serverName = [serverCell valueForKey:@"serverName"];
    serverv4 = [serverCell valueForKey:@"serverIPv4Address"];
    serverPort = [serverCell valueForKey:@"serverPort"];
    serverDescription = [serverCell valueForKey:@"description"];
    serverCurrent = [serverCell valueForKey:@"currentPlayers"];
    serverMax = [serverCell valueForKey:@"maxPlayers"];
    serverGold = [serverCell valueForKey:@"gold"];
    serverMode = [serverCell valueForKey:@"gameMode"];
    
    // Navigate
    [self performSegueWithIdentifier:@"goDetail" sender:self];
}

@end

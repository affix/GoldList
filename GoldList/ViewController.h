//
//  ViewController.h
//  GoldList
//
//  Created by Keiran Smith on 27/10/2012.
//  Copyright (c) 2012 Keiran Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JSON/JSON.h"
#import "globalVar.h"


NSArray *servers;
int count = 0;
NSArray *serverCell;
NSArray *serverList;

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>



@end

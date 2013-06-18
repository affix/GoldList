//
//  ViewController.h
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

#import <UIKit/UIKit.h>
#import "JSON/JSON.h"
#import "globalVar.h"


NSArray *servers;
int count = 0;
NSArray *serverCell;
NSArray *serverList;

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>



@end

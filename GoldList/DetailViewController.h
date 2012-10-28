//
//  DetailViewController.h
//  GoldList
//
//  Created by Keiran Smith on 28/10/2012.
//  Copyright (c) 2012 Keiran Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "globalVar.h"

@interface DetailViewController : UIViewController

// Interface Objects

@property (weak, nonatomic) IBOutlet UITextView *description;
@property (weak, nonatomic) IBOutlet UILabel *mode;
@property (weak, nonatomic) IBOutlet UILabel *connection;
@property (weak, nonatomic) IBOutlet UILabel *gold;
@property (weak, nonatomic) IBOutlet UILabel *players;

@end

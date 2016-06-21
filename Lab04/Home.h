//
//  HomeViewController.h
//  Lab04
//
//  Created by Philbert on 6/19/16.
//  Copyright © 2016 Philbert. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellWarriors.h"


@interface Home : UIViewController
@property (strong, nonatomic) IBOutlet UITableView *tblWarriors;
@property (strong, nonatomic) IBOutlet UILabel *lblWarriorNames;


@end

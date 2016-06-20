//
//  HomeViewController.m
//  Lab04
//
//  Created by Philbert on 6/19/16.
//  Copyright © 2016 Philbert. All rights reserved.
//

#import "Home.h"

@interface Home ()
@property NSMutableArray *WarriorNames;
@property NSMutableArray *WarriorImgs;
@end

@implementation Home
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
- (void)initController {
    self.WarriorNames   = [[NSMutableArray alloc] initWithObjects: @"Goku", @"Vegueta", @"Gohan", @"Trunks", @"Goten", @"Picoro", @"Boo", @"Bills", @"Freezer", @"Hit", @"Kyabe", @"Monaka", @"Champa", @"Wiss", @"Vados", @"Goku Black", nil];
    
    self.WarriorImgs   = [[NSMutableArray alloc] initWithObjects: @"GokuGod.png", @"VeguetaSSGod.png", @"Gohan.png", @"FutureTrunks.png", @"Goten.png", @"Picoro.jpg", @"Majin-Boo.jpg", @"Bills.png", @"GoldenFreezer.png", @"hit.jpg", @"Kyabe.png", @"monaka.jpg", @"Champa.png", @"Wiss.png", @"VadosFace.png", @"Black.jpg", nil];
}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.WarriorImgs.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    CellWarriors *cell = (CellWarriors *)[tableView dequeueReusableCellWithIdentifier:@"CellWarriors"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"CellWarriors" bundle:nil] forCellReuseIdentifier:@"CellWarriors"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"CellWarriors"];
    }
    //Fill cell with info from arrays
    cell.lblWName.text       = self.WarriorNames[indexPath.row];
    cell.imgWarrior.image   = [UIImage imageNamed:self.WarriorImgs[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end

//
//  Intro.m
//  Lab04
//
//  Created by Philbert on 6/19/16.
//  Copyright © 2016 Philbert. All rights reserved.
//

#import "Intro.h"

@interface Intro ()

@end

@implementation Intro
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-------------------------------------------------------------------------------
-(void)viewWillAppear:(BOOL)animated {
    self.lblIntro.text  = maIntroTitles[self.iPageIndex];
    self.imgIntro.image = [UIImage imageNamed:maIntroImgs[self.iPageIndex]];
    
    if (self.iPageIndex == 2){
        self.btnIntro.hidden = NO;
    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
/**********************************************************************************************/
#pragma mark - Actions methods
/**********************************************************************************************/


- (IBAction)btnIntroPressed:(id)sender {
    Home *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Home"];
    [self presentViewController:vc animated:YES completion:nil];
}
@end

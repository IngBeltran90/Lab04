//
//  Intro.h
//  Lab04
//
//  Created by Philbert on 6/19/16.
//  Copyright © 2016 Philbert. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"

@interface Intro : UIViewController

//Objects
@property (strong, nonatomic) IBOutlet UILabel *lblIntro;
@property (strong, nonatomic) IBOutlet UIImageView *imgIntro;
@property (strong, nonatomic) IBOutlet UIButton *btnIntro;
@property NSUInteger iPageIndex;

//Actions
- (IBAction)btnIntroPressed:(id)sender;

@end

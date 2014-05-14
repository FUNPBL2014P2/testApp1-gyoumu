//
//  ViewController.h
//  testApp
//
//  Created by Shota Oda on 2014/05/14.
//  Copyright (c) 2014年 myname. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *myLabel;
- (IBAction)tapBtn:(id)sender;
- (IBAction)ResetBtn:(id)sender;
@end

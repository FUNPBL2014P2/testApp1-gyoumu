//
//  ViewController.m
//  testApp
//
//  Created by ; Oda on 2014/05/14.
//  Copyright (c) 2014年 myname. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

int x = 0;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    /* int型変数をNSStringに変換 */
    //int x = 0;
    NSString *myStr =[NSString stringWithFormat:@"%d",x];
    self.myLabel.text = myStr;
    
    /* テキストフィールドのタイプをNumberPadに指定
       注意：処理は未実装                        */
    self.myTextField.keyboardType = UIKeyboardTypeNumberPad;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)UpBtn:(id)sender {
    x++;
    NSString *myStr =[NSString stringWithFormat:@"%d",x];
    self.myLabel.text = myStr;
}

- (IBAction)ResetBtn:(id)sender {
    x = 0;
    NSString *myStr =[NSString stringWithFormat:@"%d",x];
    self.myLabel.text = myStr;
}
- (IBAction)countNumTF:(id)sender {
}
@end

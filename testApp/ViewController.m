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
    //カウンタの初期値
int y = 1;
    //カウンタ増加率
bool state = YES;

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
    if(state){
    x = x + 1*y;
    
    NSString *myStr =[NSString stringWithFormat:@"%d",x];
    self.myLabel.text = myStr;
    }
}

- (IBAction)DownBtn:(id)sender {
    if(state){
        x = x - 1*y;
        if(x < 0) x = 0;
        //カウンタが０未満にならないようにする
        NSString *myStr =[NSString stringWithFormat:@"%d",x];
        self.myLabel.text = myStr;
    }
}

- (IBAction)ResetBtn:(id)sender {
    if(state){
    x = 0;
    NSString *myStr =[NSString stringWithFormat:@"%d",x];
    self.myLabel.text = myStr;
        
    }
    }

- (IBAction)mySwitch:(UISwitch *)sender {
        state=[sender isOn];
}

- (IBAction)countNumTF:(id)sender {
     y = [self.myTextField.text intValue];
    if(!y)y=1;
}

/*画面外タップでナンバーパッドが消える機能*/
-(void)touchesBegan: (NSSet *)touches withEvent:(UIEvent *)event
{
    [self.myTextField resignFirstResponder];
    y = [self.myTextField.text intValue];
    if(!y)y=1;
    }
@end

//
//  ViewController.m
//  PeekablePasswordTextField
//
//  Created by NSLog on 2017/7/17.
//  Copyright © 2017年 DK-Coder. All rights reserved.
//

#import "ViewController.h"
#import "DKPeekablePasswordTextField.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    CGRect frame = CGRectMake(0.f, 0.f, 320.f, 60.f);
    DKPeekablePasswordTextField *textField = [[DKPeekablePasswordTextField alloc] initWithFrame:frame];
//    textField.frame = frame;
    textField.center = self.view.center;
    [self.view addSubview:textField];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

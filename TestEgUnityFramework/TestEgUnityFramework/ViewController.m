//
//  ViewController.m
//  TestEgUnityFramework
//
//  Created by Vedavi Balaji on 3/22/18.
//  Copyright © 2018 Vedavi Balaji. All rights reserved.
//

#import "ViewController.h"
#include "MyVC.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *presentUnityView;
@end

@implementation ViewController

-(void)PresentTheUnityView : (UIButton *)myBtn
{
    NSLog(@"Presenting View");
    MyVC *vc = [[MyVC alloc] init];
    [vc SetAppPath:[[[NSBundle mainBundle] bundlePath] UTF8String]];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_presentUnityView addTarget:self action:@selector(PresentTheUnityView:) forControlEvents:UIControlEventTouchUpInside];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

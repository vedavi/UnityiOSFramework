//
//  MyVC.m
//  UnityFrameworkEg
//
//  Created by Vedavi Balaji on 3/22/18.
//  Copyright © 2018 Vedavi Balaji. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "MyVC.h"
#include "UnityView.h"
#include "UnityViewControllerBase.h"
#include "UnityAppController+ViewHandling.h"

@interface MyVC()
@property (nonatomic, strong) UIView *window;
@property (nonatomic, strong) UIButton *ClickOnBtn;
@end

@implementation MyVC

const char* appPath;

-(void) SetAppPath:(const char*) appPathName
{
    NSLog(@"%s",appPathName);
    appPath = appPathName;
}

- (void)buttonPressed:(UIButton *)button {
    NSLog(@"Button Pressed");
    UnityAppController * appcontroller = [[UnityAppController alloc]init];
    [appcontroller InitializeUnityView:appPath];

    [self.view addSubview:appcontroller.unityView];
    appcontroller.unityView.frame = self.view.frame;
    if(appcontroller.unityView == NULL)
    {
        NSLog(@"View unavailable");
    }
    else
    {
        NSLog(@"Unity view available");
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"New view loaded");

    //[self.view addSubview:GetAppController().unityView];
    // Do any additional setup after loading the view, typically from a nib.
    _window = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    _window.backgroundColor = [UIColor purpleColor];

    _ClickOnBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_ClickOnBtn addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];

    [_ClickOnBtn setTitle:@"Click on me" forState:UIControlStateNormal];
    _ClickOnBtn.frame = CGRectMake(115.0f, 150.0f, 200.0f, 30.0f);
    [_window addSubview: _ClickOnBtn];
    
    [self.view addSubview: _window];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  main.m
//  TestEgUnityFramework
//
//  Created by Vedavi Balaji on 3/22/18.
//  Copyright © 2018 Vedavi Balaji. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#include "UnityInterface.h"

int main(int argc, char * argv[]) {
    UnityInitStartupTime();

    @autoreleasepool {
        UnityInitRuntime(argc, argv);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

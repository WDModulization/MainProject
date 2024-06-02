//
//  ViewController.m
//  MainProject
//
//  Created by wudang on 2024/5/31.
//

#import "ViewController.h"

#import <Business_A_Extension/CTMediator+Business_A.h>
//#import <WDUIKit/WDUIKit-Swift.h>
//#import <WDUIKit/WDBasicViewController.h>

//同时引入组件的oc和swift
@import WDUIKit;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIViewController *foovc = [[WDBasicViewController alloc]init];
    foovc = nil;
}

- (IBAction)gotoModulA{
    UIViewController *avc = [[CTMediator sharedInstance] CTMediator_AViewController];
    [avc.view wd_frame];
    [self.navigationController pushViewController:avc animated:YES];
}

@end

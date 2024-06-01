//
//  ViewController.m
//  MainProject
//
//  Created by wudang on 2024/5/31.
//

#import "ViewController.h"

#import <Business_A_Extension/CTMediator+Business_A.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)gotoModulA{
    UIViewController *avc = [[CTMediator sharedInstance] CTMediator_AViewController];
    [self.navigationController pushViewController:avc animated:YES];
    
}

@end

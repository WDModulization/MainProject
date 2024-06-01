//
//  AViewController.m
//  MainProject
//
//  Created by wudang on 2024/5/31.
//

#import "AViewController.h"
#import <Business_B_Extension/CTMediator+Business_B.h>
@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = [NSString stringWithFormat:@"modul_A_%@",self.type];
    self.view.backgroundColor = [UIColor blueColor];

}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"touchesEnded");
    UIViewController *bvc = [[CTMediator sharedInstance] B_viewControllerWithContentText:@"hello"];
    [self.navigationController pushViewController:bvc animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

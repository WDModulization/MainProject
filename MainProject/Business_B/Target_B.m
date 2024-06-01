//
//  Target_B.m
//  MainProject
//
//  Created by wudang on 2024/5/31.
//

#import "Target_B.h"
#import "BViewController.h"

@implementation Target_B

- (UIViewController *)Action_getViewController:(NSDictionary *)params{
    NSString *contentText = params[@"contentText"];
    BViewController *vc = [[BViewController alloc] init];
    vc.contentText = contentText;
    return vc;
}
@end

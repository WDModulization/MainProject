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
    CallbackBlock block = params[@"callback"];
    BViewController *vc = [[BViewController alloc] init];
    vc.contentText = contentText;
    vc.block = block;
    return vc;
}
@end

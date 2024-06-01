//
//  Target_A.m
//  A
//
//  Created by wudang on 2024/5/31.
//

#import "Target_A.h"

@implementation Target_A
- (AViewController *)Action_getViewController:(NSDictionary *)params{
    NSNumber *type = params[@"type"];
    AViewController *vc = [[AViewController alloc] init];
    vc.type = type;
    return vc;
}
@end

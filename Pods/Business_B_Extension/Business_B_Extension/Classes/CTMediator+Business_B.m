//
//  CTMdediator+B.m
//  B_Category
//
//  Created by wudang on 2024/5/31.
//

#import "CTMediator+Business_B.h"
@implementation CTMediator(Business_B)
-(UIViewController *)B_viewControllerWithContentText:(NSString *)contentText{
    return  [self performTarget:@"B" action:@"getViewController" params:@{@"contentText":contentText} shouldCacheTarget:NO];
}
@end

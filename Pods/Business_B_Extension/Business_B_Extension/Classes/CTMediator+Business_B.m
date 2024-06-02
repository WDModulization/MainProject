//
//  CTMdediator+B.m
//  B_Category
//
//  Created by wudang on 2024/5/31.
//

#import "CTMediator+Business_B.h"
@implementation CTMediator(Business_B)
-(UIViewController *)B_viewControllerWithContentText:(NSString *)contentText callback:(void(^)(NSString *color_str))callbackBlock{
    return  [self performTarget:@"B" action:@"getViewController" params:@{@"contentText":contentText,@"callback":callbackBlock} shouldCacheTarget:NO];
}
@end

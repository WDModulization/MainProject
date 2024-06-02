//
//  CTMdediator+B.m
//  B_Category
//
//  Created by wudang on 2024/5/31.
//

#import <UIkit/UIKit.h>
#import <CTMediator/CTMediator.h>

@interface CTMediator (Business_B)
-(UIViewController *)B_viewControllerWithContentText:(NSString *)contentText callback:(void(^)(NSString *color_str))callbackBlock;
@end

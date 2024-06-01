//
//  Target_A.h
//  A
//
//  Created by wudang on 2024/5/31.
//

#import <Foundation/Foundation.h>
#import "AViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface Target_A : NSObject
- (AViewController *)Action_getViewController:(NSDictionary *)params;
@end

NS_ASSUME_NONNULL_END

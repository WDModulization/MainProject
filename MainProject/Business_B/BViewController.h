//
//  BViewController.h
//  MainProject
//
//  Created by wudang on 2024/5/31.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^CallbackBlock)(NSString *color_str);
@interface BViewController : UIViewController
@property (nonatomic, strong) NSString * contentText;
@property (nonatomic, copy) CallbackBlock block;
@end

NS_ASSUME_NONNULL_END

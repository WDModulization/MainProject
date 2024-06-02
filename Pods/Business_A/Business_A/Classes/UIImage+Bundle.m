//
//  Bundle.m
//  Business_A
//
//  Created by wudang on 2024/6/1.
//

#import "UIImage+Bundle.h"
#import "Target_A.h"

@implementation UIImage(Bundle)
+ (UIImage *)imageOfBundleNamed:(NSString *)name {
    //获取组件代码所在的bundle
    NSBundle *a_bundle = [NSBundle bundleForClass:Target_A.class];
    //根据组件代码bundle找到资源bundle
    NSURL *a_bundle_url = [a_bundle URLForResource:@"Business_A" withExtension:@"bundle"];
    //去指定的bundle中加载图片
    return [UIImage imageNamed:name inBundle:[NSBundle bundleWithURL:a_bundle_url] withConfiguration:nil];
}
@end

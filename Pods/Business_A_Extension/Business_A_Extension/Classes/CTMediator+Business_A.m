
#import "CTMediator+Business_A.h"
@implementation CTMediator(Business_A)
- (UIViewController *)CTMediator_AViewController{
    return [self performTarget:@"A" action:@"getViewController" params:@{@"type":@1} shouldCacheTarget:NO];
}
@end

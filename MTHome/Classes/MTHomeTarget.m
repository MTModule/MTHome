//
//  MTHomeTarget.m
//  Masonry
//
//  Created by Eleven on 2020/8/26.
//

#import "MTHomeTarget.h"
#import "MTHomeRootVC.h"

@implementation MTHomeTarget

+ (UIViewController *)getHomeRootVC {
    MTHomeRootVC *vc = [[MTHomeRootVC alloc] init];
    return vc;
}

@end

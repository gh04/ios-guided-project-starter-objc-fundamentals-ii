//
//  LSITipController.m
//  Tips
//
//  Created by Gerardo Hernandez on 7/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITipController.h"
//our own instance variables

@interface LSITipController () {
    NSMutableArray *_internalTips;
}

@end

@implementation LSITipController

- (instancetype)init
{
    if (self =[super init]) {
        _internalTips = [[NSMutableArray alloc] init];
    }
    return self;
}
//when something is readyonly it becomes a method
//implementing the getter. getting rid of that instance property for you.
-(NSArray<LSITip *> *)tips
{
    return _internalTips.copy;
}
//deriving it's value from somewhere else
- (NSUInteger)tipCount
{
    return _internalTips.count;
}

- (LSITip *)tipAtIndex:(NSUInteger)index
{
    return [_internalTips objectAtIndex:index];
}

- (void)addTip:(LSITip *)aTip
{
    [_internalTips addObject:aTip];
}
@end

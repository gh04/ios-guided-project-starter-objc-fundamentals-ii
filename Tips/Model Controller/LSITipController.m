//
//  LSITipController.m
//  Tips
//
//  Created by Gerardo Hernandez on 7/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITipController.h"
#import "LSITip.h"
//our own instance variables

@interface LSITipController () {
    NSMutableArray *_internalTips;
}

@end

@implementation LSITipController

- (instancetype)init
{
    if (self =[super init]) {
        //[] method syntax
        _internalTips = [[NSMutableArray alloc] init];
// will remove this portion of the app from the final app.
//        pre-process conditional
#ifdef DEBUG
        //will show band-aid
        // FIXME: Test Mode (Remove for production)
  //A forever warning custom message
#pragma message "This should be eventually removed!"
        [self addTestData];
#endif
    }
    return self;
}

- (void)addTestData
{
    LSITip *aTip = [[LSITip alloc] initWithName:@"Shushi"
                                          total:200.
                                     splitCount:4
                                  tipPercentage:20.];
    
    [_internalTips addObject:aTip];
    //alloc a tip so we can access. : our argument
    [_internalTips addObject:[[LSITip alloc] initWithName:@"Pizza"
                                                    total:30. splitCount:8 tipPercentage:25.]];
}
#pragma mark - Convenience Accessors
// MARK: -  Convience acessors
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

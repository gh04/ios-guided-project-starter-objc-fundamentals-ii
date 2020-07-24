//
//  LSITip.m
//  Tips
//
//  Created by Gerardo Hernandez on 7/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITip.h"

@implementation LSITip

    -(instancetype)initWithName:(NSString *)aName
total:(double)aTotal splitCount:(NSInteger)aSplitCount tipPercentage:(double)aTipPercentage;
{

if (self = [super init]) {
    //instance variable direct access to
    //accessing the underlying variable because we cannot set in readonly.
    //by grabbing a copy we can sure it is always not mutablable
    _name = aName.copy;
    _total = aTotal;
    _splitCount = aSplitCount;
    
    }
    return self;
}
    
@end

//
//  LSITipController.h
//  Tips
//
//  Created by Gerardo Hernandez on 7/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
//instead of importing files in headers. Which you don't want to.
//Won't stop you from making a misktake
//the less we import, the faster compile times.
// everything is accessible in obj c. You can see all method names.
//if you need to make it 'private' use swift and it will dissappear at run time
@class LSITip;

NS_ASSUME_NONNULL_BEGIN

@interface LSITipController : NSObject
//helper methods to not make mutliple copies when you dont want to
@property (nonatomic, readonly, copy) NSArray<LSITip *> *tips;

@property (nonatomic, readonly) NSUInteger tipCount;

- (LSITip *)tipAtIndex:(NSUInteger)index;

- (void)addTip:(LSITip *)aTip;

@end

NS_ASSUME_NONNULL_END

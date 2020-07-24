//
//  LSITip.h
//  Tips
//
//  Created by Gerardo Hernandez on 7/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//reference types
@interface LSITip : NSObject

//creates a copy a mutabled 
@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly) double total;
@property (nonatomic, readonly) NSInteger splitCount;
@property (nonatomic, readonly) double tipCount;


@end

NS_ASSUME_NONNULL_END

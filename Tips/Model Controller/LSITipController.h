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
@class LSITip;

NS_ASSUME_NONNULL_BEGIN

@interface LSITipController : NSObject

@property (nonatomic, readonly, copy) NSArray<LSITip *> *tips;

@end

NS_ASSUME_NONNULL_END

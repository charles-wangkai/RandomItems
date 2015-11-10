//
//  Item.h
//  RandomItems
//
//  Created by WangKai on 15/6/2.
//  Copyright (c) 2015年 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject
+ (instancetype)randomItem;

// Designated initializer for Item
- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber;

- (instancetype)initWithItemName:(NSString *)name;

@property (nonatomic, strong) Item *containedItem;
@property (nonatomic, weak) Item *container;

@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;
@end

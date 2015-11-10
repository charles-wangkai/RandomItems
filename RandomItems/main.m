//
//  main.m
//  RandomItems
//
//  Created by WangKai on 15/6/2.
//  Copyright (c) 2015年 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        Item *backpack = [[Item alloc] initWithItemName:@"Backpack"];
        [items addObject:backpack];
        
        Item *calculator = [[Item alloc] initWithItemName:@"Calculator"];
        [items addObject:calculator];
        
        backpack.containedItem = calculator;
        
        backpack = nil;
        calculator = nil;
        
        // For every item in the items array ...
        for (Item *item in items) {
            // Log the description of item
            NSLog(@"%@", item);
        }
        
        // Destroy the mutable array object
        NSLog(@"Setting items to nil...");
        items = nil;
    }
    return 0;
}

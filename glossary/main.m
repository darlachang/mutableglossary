//
//  main.m
//  glossary
//
//  Created by Ming-Han Chang on 2016/4/7.
//  Copyright © 2016年 Ming-Han Chang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableDictionary *glossary = [NSMutableDictionary dictionary];
        
        //store three entries in the glossary. method 1
        [glossary setObject: @"A class defined so other classes can inherit from it"
                     forKey:@"abstract class"];
        [glossary setObject:@"To implement all the methods defined in a protocol" forKey: @"adopt"];
        [glossary setObject:@"Storing an object for later use" forKey:@"archiving"];
        
        //store three entries in the glossary. method 2
        glossary[@"concrete class"] = @"A class defined so other classes can also inherit from it";
        glossary[@"receive"] = @"To receive all the methods defined in a protocol";
        glossary[@"archive"] = @"Store an object for later use";
        
        //Retrieve and display them
        NSLog(@"abstract class: %@", [glossary objectForKey: @"abstract class"]);
        NSLog(@"adopt: %@", [glossary objectForKey:@"adopt"]);
        NSLog(@"archiving: %@", [glossary objectForKey:@"archiving"]);
        NSLog(@"concrete class: %@", glossary[@"concrete class"]);
        NSLog(@"receive: %@", glossary[@"receive"]);
        NSLog(@"archive: %@", glossary[@"archive"]);
        
    }
    return 0;
}

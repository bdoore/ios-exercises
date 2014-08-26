//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    
    NSString *fullSentence = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    
    return fullSentence;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    
    if ([cheeseName hasSuffix:@"cheese"] || [cheeseName hasSuffix:@"Cheese"])
        return [cheeseName substringToIndex:[cheeseName length] -7];
    else
        return cheeseName;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        return @"1 cheese";
    } else {
        return [NSString stringWithFormat:@"%ld cheeses",(long)cheeseCount];
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
}

@end

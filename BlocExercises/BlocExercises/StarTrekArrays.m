//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    NSArray *output = [characterString componentsSeparatedByString:@";"];
    return output;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *output =[characterArray componentsJoinedByString:@";"];
    return output;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSMutableArray *sorted = [characterArray mutableCopy];
    NSSortDescriptor *sortDescriptor =[[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    [sorted sortUsingDescriptors:@[sortDescriptor]];
    return sorted;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    
    BOOL temp = NO;
    
    for(int i=0; i < [characterArray count]; i++){
        if ([characterArray[i] isEqualToString:(@"Worf, son of Mogh, slayer of Gowron")])
            temp = YES;
    }
    return temp;
}

@end

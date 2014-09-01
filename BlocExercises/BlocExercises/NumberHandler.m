//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    
    NSNumber *temp =[NSNumber numberWithInt:([number intValue] * 2)];
    
    return temp;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSMutableArray *temp = [[NSMutableArray alloc] init];
    
    if(number < otherNumber)
        for(NSInteger i=number; i <= otherNumber; i++)
            [temp addObject:[NSNumber numberWithInteger:i]];
    else if(number > otherNumber)
        for(NSInteger i=otherNumber; i <= number; i++)
            [temp addObject:[NSNumber numberWithInteger:i]];
        
    return temp;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    
    NSMutableArray *sorted =[arrayOfNumbers mutableCopy];
    NSSortDescriptor *sortDescriptor =[[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    [sorted sortUsingDescriptors:@[sortDescriptor]];

    return [sorted[0] intValue];
}

@end

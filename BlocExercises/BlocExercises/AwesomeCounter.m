//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSString *output= @"";
    NSString *tempString=@"";
    if(number < otherNumber)
        for(NSInteger i= number; i <= otherNumber; i++) {
            tempString = [NSString stringWithFormat:@"%d",i];
            output = [output stringByAppendingString:tempString];
        }
    
    if(number >= otherNumber)
        for(NSInteger i= otherNumber; i <= number; i++) {
            tempString = [NSString stringWithFormat:@"%d",i];
            output = [output stringByAppendingString:tempString];
        }

        
    return output;
}

@end

//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSString *temp = characterDictionary[@"favorite drink"];
    return temp;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    
    NSMutableArray *temp = [[NSMutableArray alloc] init];
    
    for(NSInteger i = 0; i < charactersArray.count; i++) {
        
        [temp addObject: [charactersArray objectAtIndex:(i)][@"favorite drink"]];
        /*
        NSDictionary *character = [charactersArray objectAtIndex:(i)];
        [temp addObject: character[@"favorite drink"]];
         */
    }
        
    return temp;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    NSMutableDictionary *temp = [characterDictionary mutableCopy];
    [temp setObject:@"Make it so" forKey:@"quote"];
    return temp;
}

@end

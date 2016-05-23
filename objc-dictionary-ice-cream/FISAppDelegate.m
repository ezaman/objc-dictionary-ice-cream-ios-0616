//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray*)namesForIceCream:(NSString *)iceCream {
    NSMutableArray *iceCreamArray = [ [NSMutableArray alloc] init];
    NSDictionary *namesForIceCream = @{
                                       @"Joe"    : @"Peanut Butter and Chocolate",
                                       @"Tim"    : @"Natural Vanilla",
                                       @"Sophie" : @"Mexican Chocolate",
                                       @"Deniz"  : @"Natural Vanilla",
                                       @"Tom"    : @"Mexican Chocolate",
                                       @"Jim"    : @"Natural Vanilla",
                                       @"Mark"   : @"Cookies 'n Cream"  };
    for (NSString *key in namesForIceCream) {
        if ([namesForIceCream[key] isEqualToString:iceCream])
        {
            [iceCreamArray addObject: key];
        }
        
    }
    return iceCreamArray;
}

- (NSDictionary*)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    NSMutableDictionary *countsByIceCream = [[NSMutableDictionary alloc] init];
    
    for (NSString *keys in iceCreamByName) {
        NSString *iceCreamNames = iceCreamByName[keys];
        
        if ([countsByIceCream objectForKey: iceCreamNames] == 0) {
            
            NSArray *countIceCream = [self namesForIceCream:(iceCreamNames)];
            NSNumber *countingEachFlavor = @([countIceCream count]);
            
            countsByIceCream[iceCreamNames] = countingEachFlavor;
        }
        
    }
    
    return countsByIceCream;
}
@end
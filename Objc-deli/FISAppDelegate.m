//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    NSString *customerLine = @"";
    
    if ([deliLine count] < 1) {
        
        customerLine = @"The line is currently empty.";
        
    } else {
        
        customerLine = @"The line is:";
        
        NSUInteger index = 0;
        for (NSString *customer in deliLine) {
            
            index += 1;
            customerLine = [customerLine stringByAppendingFormat:@"\n%lu. %@", index, customer];
            
        }
        
    }
    
    return customerLine;
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *customerName = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    
    return customerName;
    
}


@end

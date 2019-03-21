//
//  PropertyListComponent.m
//  AppleSDKTips
//

#import "PropertyListComponent.h"

@implementation PropertyListComponent

+ (NSArray*) propertyListArrayWithPlistPath:(NSString*)plistPathString
{
    if(plistPathString.length == 0) {
        return nil;
    }
    
    NSArray* plistArray = [NSArray arrayWithContentsOfFile:plistPathString];
    if(plistArray.count > 0) {
        return plistArray;
    }

    return nil;
}

@end

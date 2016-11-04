//
//  PropertyListComponent.h
//  AppleSDKTips
//

#import <Foundation/Foundation.h>

@interface PropertyListComponent : NSObject

+ (NSArray*) propertyListArrayWithPlistPath:(NSString*)plistPathString;
+ (NSArray*) topMenuArrayWithSourceArray:(NSArray*) sourceArray;
+ (NSArray*) sectionKeyStringArrayWithSourceArray:(NSArray*)sourceArray;

@end

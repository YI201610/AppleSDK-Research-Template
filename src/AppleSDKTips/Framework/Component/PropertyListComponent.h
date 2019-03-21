//
//  PropertyListComponent.h
//  AppleSDKTips
//

#import <Foundation/Foundation.h>

/**
 plistを操作するテクニカルクラス
 TODO: クラス名を変更
 */
@interface PropertyListComponent : NSObject

/**
 指定したPathのplistをリスト型で返す

 @param plistPathString plistのパス
 @return plistが入ったリスト
 */
+ (NSArray*) propertyListArrayWithPlistPath:(NSString*)plistPathString;

@end

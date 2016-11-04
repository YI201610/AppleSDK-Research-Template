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
    
    NSData* plistXML = [NSData dataWithContentsOfFile:plistPathString];
    
    NSPropertyListFormat format;
    NSError* errorDesc = nil;
    
    NSArray* propertyListArray = [NSPropertyListSerialization propertyListWithData:plistXML
                                                                           options:NSPropertyListImmutable
                                                                            format:&format   error:&errorDesc];

    if(propertyListArray.count > 0) {
        return propertyListArray;
    }

    return nil;
}

+ (NSArray*) topMenuArrayWithSourceArray:(NSArray*) sourceArray {

    NSMutableArray *result = [NSMutableArray new];
    NSArray* topArray = [sourceArray firstObject];
    
    for (NSDictionary* themeDictionary in topArray) {
        NSString* themeString = [themeDictionary objectForKey:@"title"];
        [result addObject: themeString];
    }
    
    return result;
}

+ (NSArray<NSString*>*) sectionKeyStringArrayWithSourceArray:(NSArray*)sourceArray {
    NSMutableArray *result = [NSMutableArray new];
    NSArray* topArray = [sourceArray firstObject];
    
    for (NSDictionary* themeDictionary in topArray) {
        NSArray* itemArray = [themeDictionary objectForKey:@"items"];
        [result addObject: itemArray];
    }
    
    return result;
}

#if 0

- plistパスからplistを読み込み
- インスタンス変数にplistの内容を保存
- plistComponentクラスの新規作成


NSError* errorDesc = nil;
if([plistNameString length] > 0)
{
    
    //TODO: plistのディクショナリーから、topMenuArrayを返すメソッドを作成
    //TODO: plistのディクショナリーから、sectionKeyStringArrayを返すメソッドをを生成
    
    
    if (propertyListArray) {
        
        NSArray* topArray = [propertyListArray firstObject];
        
        for (NSDictionary* themeDictionary in topArray) {
            NSString* themeString = [themeDictionary objectForKey:@"title"];
            
            [_sectionKeyStringArray addObject: themeString];
            
            NSArray* itemArray = [themeDictionary objectForKey:@"items"];
            [topMenuArray addObject: itemArray];
            
            for (NSDictionary* itemDic in itemArray) {
                
                if([itemDic isKindOfClass:[NSDictionary class]]){
                    
                    //------------------------------------------
                    //TopMenuエンティティを生成
                    //create with itemDic的なメソッドを作成
                    //------------------------------------------
                    MTMTopMenuEntity* entity = [MTMTopMenuEntity new];
                    
                    entity = [MTMTopMenuEntity new];
                    entity.sectionNameString = themeString;
                    entity.titleString = [itemDic objectForKey:@"title"];
                    entity.viewControllerNameString = [itemDic objectForKey:@"vc"];
                    entity.windowControllerNameString = [itemDic objectForKey:@"vc_osx"];
                    
                    [_allItemArray addObject:entity];
                }
            }
        }
        
    }else{
        debugout(@"Error reading plist: %@, format: %lu", errorDesc, format);
    }
}

/*!
 @comment	ビューで使用する形式のディクショナリーを生成
 */
_topMenuDictionary = [[NSDictionary alloc] initWithObjects:topMenuArray forKeys:_sectionKeyStringArray];

*/
#endif

@end

//
//  TopMenuModelController.swift
//  AppleSDKTips
//
//

import UIKit

class TopMenuModelController: NSObject {

    //---------------------------------------------
    // MARK: - Properties
    
    var sectionKeyStringArray: Array<String>?
    
    var menuIndexStringArray: Array<String>?
    
    var topMenuDictionary: [String: Any]?
    
    
    //---------------------------------------------
    // MARK: - Life Cycle
    
    /**
     
     # params
     - plistName: plistのパス文字列
     */
    init(plistName: String) {

        sectionKeyStringArray = []
        menuIndexStringArray = []
        
        /* 
        - plistパスからplistを読み込み
        - インスタンス変数にplistの内容を保存
          - plistComponentクラスの新規作成


        NSError* errorDesc = nil;
        if([plistNameString length] > 0)
        {

            //------------------------------------------
            // plistからディクショナリーを返すメソッドを作成
            //------------------------------------------
			//NSDataのplistXMLを生成
            NSData* plistXML = [NSData dataWithContentsOfFile:plistNameString];

			//
            NSPropertyListFormat format;
            NSArray* propertyListArray = [NSPropertyListSerialization propertyListWithData:plistXML
										options:NSPropertyListImmutable
                                                       format:&format   error:&errorDesc];
            
            
            //TODO: plistのディクショナリーから、topMenuArrayを返すメソッドを作成
            //TODO: plistのディクショナリーから、sectionKeyStringArrayを返すメソッドをを生成
            
            
            if (propertyListArray) {
                
                NSArray* topArray = [propertyListArray firstObject];
                
                for (NSDictionary* themeDictionary in topArray) {
                    NSString* themeString = [themeDictionary objectForKey:@"title"];
                    
                    [_sectionKeyStringArray addObject: themeString];
                    [_menuIndexStringArray  addObject: themeString];

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
        
    }

    //---------------------------------------------
    // MARK: - Public 
    
    func numberOfSection() -> Int {
        return 0
    }

    func numberOfItem(sectionName: String) -> Int {
        return 0
    }
    
    
    func sectionName(index: Int) -> String {
        return ""
    }
 

	/* 指定されたセクション、指定されたインデックスに相当するTopMenuエンティティを返す  */    
    func itemForSection(sectionName: String, index: Int) -> TopMenuEntity {
     
        return TopMenuEntity()
    }
    
    
}

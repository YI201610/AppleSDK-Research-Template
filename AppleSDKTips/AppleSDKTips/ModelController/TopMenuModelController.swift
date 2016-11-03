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
 
    
    func itemForSection(sectionName: String, index: Int) -> TopMenuEntity {
     
        return TopMenuEntity()
    }
    
    
}

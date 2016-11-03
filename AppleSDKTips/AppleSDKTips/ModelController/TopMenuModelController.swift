//
//  TopMenuModelController.swift
//  AppleSDKTips
//
//

import UIKit

class TopMenuModelController: NSObject {

    var sectionKeyStringArray: Array<String>?
    
    var menuIndexStringArray: Array<String>?
    
    var topMenuDictionary: [String: Any]?
    
    init(plistName: String) {

        sectionKeyStringArray = []
        menuIndexStringArray = []
        
    }

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

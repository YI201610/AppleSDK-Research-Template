//
//  TopMenuModelController.swift
//  AppleSDKTips
//
//

import UIKit

class TopMenuModelController: NSObject {

    init(plistName: String) {
        
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

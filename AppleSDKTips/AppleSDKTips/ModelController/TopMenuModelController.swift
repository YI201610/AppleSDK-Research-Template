//
//  TopMenuModelController.swift
//  AppleSDKTips
//
//  Created by 今村裕治 on 2016/11/01.
//  Copyright © 2016年 Yuji Imamura. All rights reserved.
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

//
//  TopMenuTableViewDataSource.swift
//  AppleSDKTips
//

import UIKit

class TopMenuTableViewDataSource: NSObject, UITableViewDataSource {
    

    weak var modelController: TopMenuModelController?
    
    init(controller: TopMenuModelController) {
        
        modelController = controller
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        guard let ref = modelController else {
            return 0
        }
        
        return ref.numberOfSection()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        guard let ref = modelController else {
            return 0
        }
        
        return ref.numberOfItem(sectionName: ref.sectionName(index: section))
        
    }

}

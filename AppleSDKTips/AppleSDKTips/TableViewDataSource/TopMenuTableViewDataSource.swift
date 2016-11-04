//
//  TopMenuTableViewDataSource.swift
//  AppleSDKTips
//

import UIKit

class TopMenuTableViewDataSource: NSObject, UITableViewDataSource {
    
    //---------------------------------------------
    // MARK: - Properties

    weak var modelController: TopMenuModelController?
    
    //---------------------------------------------
    // MARK: - Life Cycle
    
    init(controller: TopMenuModelController) {
        
        modelController = controller
    }
    
    //---------------------------------------------
    // MARK: - TableView DataSource Delegate
    
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

//
//  TopMenuListTableViewDataSource.swift
//  AppleSDKTips
//

import UIKit

/** TopMenu・テーブルビューのデータソース */
class TopMenuListTableViewDataSource: NSObject, UITableViewDataSource {
    
    //---------------------------------------------
    // MARK: - Properties

    weak var modelController: TopMenuList?
    
    //---------------------------------------------
    // MARK: - Life Cycle
    
    init(source: TopMenuList) {
        
        modelController = source
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
        
        return ref.numberOfItem(forSection: ref.sectionNameString(with: section))
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        guard let ref = modelController else {
            return ""
        }
        
        return ref.sectionNameString(with: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        guard let ref = modelController else {
            return UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: TopMenuTableViewCell.cellIdentifier())
        }

        let sectionNo = indexPath.section
        let rowNo = indexPath.row
        
        let sectionName = ref.sectionNameString(with: sectionNo)
        
        let cellObject = ref.item(forSection: sectionName, index: rowNo)

        var cell = tableView.dequeueReusableCell(withIdentifier: TopMenuTableViewCell.cellIdentifier())
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: TopMenuTableViewCell.cellIdentifier())
        }
        
        guard let cellRef: TopMenuTableViewCell = cell as! TopMenuTableViewCell? else {
            return UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: TopMenuTableViewCell.cellIdentifier())
        }
        cellRef.titleLabel.text = cellObject?.titleString

        return cellRef
    }

}

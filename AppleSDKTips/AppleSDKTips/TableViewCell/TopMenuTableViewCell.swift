//
//  TopMenuTableViewCell.swift
//  AppleSDKTips
//

import UIKit

class TopMenuTableViewCell: UITableViewCell {

    //---------------------------------------------
    // MARK: - Properties
    
    @IBOutlet weak var titleLabel: UILabel!
    
    //---------------------------------------------
    // MARK: - Life Cycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    class func cellIdentifier() -> String {
        return NSStringFromClass(self).components(separatedBy: ".").last! as String
    }

}

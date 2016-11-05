//
//  TopMenuTableViewDelegate.swift
//  AppleSDKTips
//

import UIKit

extension TopMenuViewController:  UITableViewDelegate
{
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

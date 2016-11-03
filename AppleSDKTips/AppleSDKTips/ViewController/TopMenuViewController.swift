//
//  TopMenuViewController.swift
//  AppleSDKTips
//

import UIKit

class TopMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let testBundle = Bundle(for: type(of: self))
        let plistPath = testBundle.path(forResource: "topMenu", ofType: "plist")
        
        guard let plistName = plistPath else {
            return
        }

        print(plistName)
    }

}

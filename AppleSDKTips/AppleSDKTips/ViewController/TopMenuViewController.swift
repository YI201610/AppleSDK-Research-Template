//
//  TopMenuViewController.swift
//  AppleSDKTips
//

import UIKit

class TopMenuViewController: UIViewController {

    //---------------------------------------------
    // MARK: - Private
    
    private func plistPathString() -> String {
        
        let testBundle = Bundle(for: type(of: self))
        let path = testBundle.path(forResource: "topMenu", ofType: "plist")
        
        guard let plistPath = path else {
            return String()
        }
        
        return plistPath
    }
    
    //---------------------------------------------
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        let plistPath = plistPathString()
        print(plistPath)
    }

}

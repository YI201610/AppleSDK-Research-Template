//
//  LayerKit1ViewController.swift
//  AppleSDKTips
//

import UIKit

class LayerKit1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func unwindToTop(_ sender: UIStoryboardSegue) {
        let sourceViewController = sender.source
        // Use data from the view controller which initiated the unwind segue
        sourceViewController.dismiss(animated: true, completion: {})
    }
    
    @IBAction func didSelectTouchBarButton(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: {})
    }
}

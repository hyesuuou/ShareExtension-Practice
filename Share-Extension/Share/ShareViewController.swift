//
//  ShareViewController.swift
//  Share
//
//  Created by 김혜수 on 2022/07/07.
//

import UIKit
import Social

class ShareViewController: UIViewController {
    
    @IBOutlet weak var tokenLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tokenLabel.text = UserDefaults(suiteName: "group.kimhyesu.Share")?.string(forKey: "token")
    }

    @IBAction func postButtonDidTap(_ sender: Any) {
        
        let defaults = UserDefaults(suiteName: "group.kimhyesu.Share")
        defaults?.set(textField.text ?? "", forKey: "text")
        defaults?.synchronize()
        
        print("서버연결하기")
    }
}

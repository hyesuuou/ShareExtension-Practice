//
//  ViewController.swift
//  Share-Extension
//
//  Created by 김혜수 on 2022/07/07.
//

import UIKit

struct APITokens {
    static let token = "이게앱에저장되어있는토큰"
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let defaults = UserDefaults(suiteName: "group.kimhyesu.Share")
        defaults?.set(APITokens.token, forKey: "token")
        defaults?.synchronize()
    }
    
    @IBAction func textButtonDidTap(_ sender: Any) {
        print(UserDefaults(suiteName: "group.kimhyesu.Share")?.string(forKey: "text") ?? "")
    }
}


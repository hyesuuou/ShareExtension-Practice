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
        
        /// 앱에서 전달받은 토큰을 라벨에 표시한다.
        tokenLabel.text = UserDefaults(suiteName: "group.kimhyesu.Share")?.string(forKey: "token")
    }

    @IBAction func postButtonDidTap(_ sender: Any) {
        
        /// UserDefaults에 Textfield에 담긴 내용을 저장한다. (이후 앱에서 가져올 수 있도록)
        let defaults = UserDefaults(suiteName: "group.kimhyesu.Share")
        defaults?.set(textField.text ?? "", forKey: "text")
        defaults?.synchronize()
        
        print("서버연결하기")
    }
}

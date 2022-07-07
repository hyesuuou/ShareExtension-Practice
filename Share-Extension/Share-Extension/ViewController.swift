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
        
        
        /// Share Extension과 원래 앱을 같은 App Group을 이용해 같은 그룹으로 (group.kimhyesu.Share) 묶는다.
        /// 그리고 해당 그룹의 유저디폴츠에 앱에 저장된 토큰을 세팅해주고, 동기화시켜주면
        /// 쉐어익스텐션에서 해당 내용을 전달받을 수 있다.
        let defaults = UserDefaults(suiteName: "group.kimhyesu.Share")
        defaults?.set(APITokens.token, forKey: "token")
        defaults?.synchronize()
    }
    
    /// share sheet의 textfield에 입력하고 post 했던 내용을
    /// 앱 내부로 돌아와 text 버튼을 누르면 보이게 한다.
    @IBAction func textButtonDidTap(_ sender: Any) {
        print(UserDefaults(suiteName: "group.kimhyesu.Share")?.string(forKey: "text") ?? "")
    }
}


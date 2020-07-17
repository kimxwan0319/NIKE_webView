//
//  ViewController.swift
//  webviewTest
//
//  Created by 김수완 on 2020/07/02.
//  Copyright © 2020 김수완. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {
   
    @IBOutlet weak var wv: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadUrl("https://www.nike.com/kr/ko_kr/")
    }
    
    func loadUrl(_ url : String){
        let request = URLRequest(url: URL(string: url)!)
        
        wv.load(request)
        
        wv.uiDelegate = self
        wv.navigationDelegate = self
    }
    
    @IBAction func cart(_ sender: Any) {
        loadUrl("https://www.nike.com/kr/ko_kr/cart")
    }
    @IBAction func home(_ sender: Any) {
        loadUrl("https://www.nike.com/kr/ko_kr/")
    }

    @IBAction func myPage(_ sender: Any) {
        loadUrl("https://www.nike.com/kr/ko_kr/mypage")
    }


    
    
}


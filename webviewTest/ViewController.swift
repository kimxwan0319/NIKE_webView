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
        loadUrl()
    }


    func loadUrl(){
        
        let url = URL(string: "https://www.nike.com/kr/ko_kr/")
        let request = URLRequest(url: url!)
        
        wv.load(request)
        
        wv.uiDelegate = self
        wv.navigationDelegate = self
    }
}


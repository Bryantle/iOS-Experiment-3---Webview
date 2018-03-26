//
//  ViewController.swift
//  iOS Experiment 3 - Webview
//
//  Created by mac on 3/25/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate{
    var noodles: WKWebView!

    override func loadView() {
        noodles = WKWebView()
        noodles.navigationDelegate = self
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://google.com")!
        let x = SecCreateSharedWebCredentialPassword()
        noodles.load(URLRequest(url: url))
        if !noodles.canGoBack {print(x)}
        view = noodles
        
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


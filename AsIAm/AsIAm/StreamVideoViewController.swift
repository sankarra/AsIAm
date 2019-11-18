//
//  StreamVideoViewController.swift
//  AsIAm
//
//  Created by Anup Sankarraman on 11/5/19.
//  Copyright © 2019 Anup Sankarraman. All rights reserved.
//

import UIKit
import WebKit

class StreamVideoViewController: UIViewController, WKUIDelegate {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let webviewConfig = WKWebViewConfiguration()
        webviewConfig.allowsInlineMediaPlayback = true
        let videoURL = URL(string: ModuleNavModel.shared.module(at:ModuleNavModel.shared.selectedModule)?["VideoURL"] as! String)
        let videoRequest = URLRequest(url: videoURL!)
        webView.load(videoRequest)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

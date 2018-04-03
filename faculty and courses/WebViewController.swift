//
//  WebViewController.swift
//  faculty and courses
//
//  Created by Mac Lab on 2/15/18.
//  Copyright © 2018 Javar Finch. All rights reserved.
//

import UIKit
import WebKit
class WebViewController: UIViewController {
    
    
    @IBOutlet weak var webView: WKWebView!
    var webSite:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        let websiteString = "https://www.nova.edu/~" + webSite!
        if let url = URL(string: websiteString) {
            let request = URLRequest(url: url)
            webView.load(request)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

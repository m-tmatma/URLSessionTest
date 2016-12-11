//
//  ViewController.swift
//  URLSessionTest
//
//  Created by tsuchiyamamasaru on 2016/12/11.
//  Copyright © 2016年 tsuchiyamamasaru. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func buttonClicked(_ sender: Any) {
        let request: Request = Request()
        
        let url: URL = URL(string: "http://www.asahi.com")!
        
        request.get(url: url, completionHandler: { data, response, error in
            if let res = response {
                print(res)
            }
            if let dat = data {
                print(dat)
            }
            if let err = error {
                print(err)
            }
        })
    }

}


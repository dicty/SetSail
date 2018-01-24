//
//  ViewController.swift
//  BaiDuNews
//
//  Created by work-pn on 2018/1/18.
//  Copyright © 2018年 Zhangzhong Technology. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request("www.baidu.com").responseJSON { (response) in
            debugPrint(response)
            
            if let json = response.result.value {
                print("JSON: \(json)")
            }
    
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


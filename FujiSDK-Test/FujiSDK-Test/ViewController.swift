//
//  ViewController.swift
//  FujiSDK-Test
//
//  Created by Thuy Dong Xuan on 3/15/17.
//  Copyright © 2017 FujiTech. All rights reserved.
//

import UIKit
import FujiSDK

class ViewController: UIViewController {
    
    var gg: GoogleLogin? = nil
    
    @IBOutlet weak var ggIn: UIButton!
    @IBOutlet weak var ggOut: UIButton!
    
    
    @IBAction func ggIn(_ sender: Any) {
        print(" Click GG login")
        
        FujiSDK.Instance.hello()
        
        gg?.login()
    }
    
    @IBAction func ggOut(_ sender: Any) {
        gg?.logout()
    }
    
    @IBAction func ggLoginFromFramework(_ sender: Any) {
        FujiSDK.Instance.hello()
    }
    
  override func viewDidLoad() {
    super.viewDidLoad()
    
    gg = GoogleLogin.init(vc: self)
  }

    

}


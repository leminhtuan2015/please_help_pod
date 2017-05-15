//
//  FujiSDK.swift
//  Fuji_platform_ios
//
//  Created by Fuji on 3/13/17.
//  Copyright © 2017 Fuji. All rights reserved.
//

import Foundation
import UIKit
//import Goo

@objc public class FujiSDK : NSObject {

    
    public class var Instance: FujiSDK {
        struct Static {
            static let instance: FujiSDK = FujiSDK()
        }
        return Static.instance
    }

    public func hello(){
        print("Hello")
    }
    
    public func login(){
        print("login from framework")
//        SDKGoogleLogin.login()
    }
}












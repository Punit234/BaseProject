//
//  Global.swift
//  JamboMart
//
//  Created by Punit Teraiya on 07/07/17.
//  Copyright © 2017 Punit Teraiya. All rights reserved.
//

import UIKit
import Foundation
import SwiftyUserDefaults



struct ApiKeys {
    static let user = "user"
    static let name = "Name"
}


extension DefaultsKeys {
    static let userID = DefaultsKey<String?>("userID")
   
}

enum Storyboards : String {
    
    case Authentication = "Authentication"
    case Home = "Home"
    
}

enum NavigationControllerIdentifier : String {
    
    case AuthNavigationController = "AuthNavigationController"
    case HomeNavigationController = "HomeNavigationController"
    
}

enum ControllerIdentifier : String {
    
    case Login = "Login"
    case Register = "Register"
    case Home = "Home"
    case Detail = "Detail"

}

enum AppFont : String {
    case Regular = "Regular"
    case Bold = "Bold"
    case SemiBold = "SemiBold"
    case Thin = "Thin"
    case ExtraThin = "ExtraThin"
}

struct StringConstant {
    
    static let AppName = ""
 
}


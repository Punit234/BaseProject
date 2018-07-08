//
//  Functions.swift
//  JamboMart
//
//  Created by Dhaval Mistry on 22/07/17.
//  Copyright © 2017 Punit Teraiya. All rights reserved.
//

import UIKit
import Foundation


func GetAppFont(FontType : AppFont,FontSize : CGFloat) -> UIFont?{
    
    guard let font = UIFont(name: FontType.rawValue, size: FontSize) else {
        print("Font with provided font name not found!")
        return nil
    }
    return font
}

func GetViewController(StoryBoard : Storyboards,Identifier : ControllerIdentifier) ->UIViewController?{
 
    return UIStoryboard(name: StoryBoard.rawValue, bundle: nil).instantiateViewController(withIdentifier: Identifier.rawValue)
  
}

func SetRootViewController(StoryBoard : Storyboards,Identifier : NavigationControllerIdentifier){
    
    guard let NavigationVC = UIStoryboard(name: StoryBoard.rawValue, bundle: nil).instantiateViewController(withIdentifier: Identifier.rawValue) as? UINavigationController else{
        print("Navigation Controller with provided identifier not found!")
        return
    }
    
    DELEGATE.window?.rootViewController = NavigationVC
}



//
//  Extension.swift
//  JamboMart
//
//  Created by Dhaval Mistry on 22/07/17.
//  Copyright © 2017 Punit Teraiya. All rights reserved.
//

import UIKit
import Foundation
import Material

extension UIColor{
    static let appRed = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
}

extension UIViewController{
    
    func popViewController(){
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    func prepareCustomToolbar(titleText : String,detailText: String,titleTextAlignMent : NSTextAlignment? = .center,detailTextAlignMent : NSTextAlignment? = .center,leftMenuItems : [UIView],rightmenuItems : [UIView]) {
        
        guard let toolbar = toolbarController?.toolbar else {
            return
        }
        
        toolbar.titleLabel.text = titleText
        toolbar.titleLabel.textAlignment = titleTextAlignMent!
        
        toolbar.detailLabel.text = detailText
        toolbar.detailLabel.textAlignment = detailTextAlignMent!
        
        toolbar.leftViews = leftMenuItems
        toolbar.rightViews = rightmenuItems
    }
    
    func toolBarButton(image : UIImage) -> IconButton{
        
        let Button = IconButton(image: image, tintColor: .white)
        Button.pulseColor = .white
        return Button
        
    }
   
}

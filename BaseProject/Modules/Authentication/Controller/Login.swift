//
//  Login.swift
//  JamboMart
//
//  Created by Dhaval Mistry on 22/07/17.
//  Copyright © 2017 Punit Teraiya. All rights reserved.
//

import UIKit
import Material
import SwiftyUserDefaults



class Login: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

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
    
    @IBAction func clickRegister(_ sender: Any) {
        
        guard let VC = GetViewController(StoryBoard: .Authentication, Identifier: .Register) else{
            return
        }
        self.navigationController?.pushViewController(VC, animated: true)
      
    }
   
}



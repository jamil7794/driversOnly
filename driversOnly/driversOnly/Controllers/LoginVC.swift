//
//  LoginVC.swift
//  driversOnly
//
//  Created by Jamil Jalal on 2/13/19.
//  Copyright © 2019 Jamil Jalal. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func byEmailWasPressed(_ sender: Any) {
        let sigininVC = storyboard?.instantiateViewController(withIdentifier: "signInVC")
        presentDetail(viewControllerToPresent: sigininVC!)
    }
    
}

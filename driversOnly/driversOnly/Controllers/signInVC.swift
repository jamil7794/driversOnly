//
//  signInVC.swift
//  driversOnly
//
//  Created by Jamil Jalal on 2/14/19.
//  Copyright © 2019 Jamil Jalal. All rights reserved.
//

import UIKit

class signInVC: UIViewController {
    
    @IBOutlet weak var email: textFieldExt!
    @IBOutlet weak var password: textFieldExt!
    @IBOutlet weak var userCredential: UIStackView!
    var emailUser: String = ""
    var pass: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func backBtnWasPressed(_ sender: Any) {
        self.dismissDetail()
    }
    
    @IBAction func nextWasPressed(_ sender: Any) {
        
    }
    
}

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
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var citySearchTextField: textFieldExt!
    
    
    let data = ["New York, NY", "Los Angeles, CA", "Chicago, IL", "Houston, TX",
                "Philadelphia, PA", "Phoenix, AZ", "San Diego, CA", "San Antonio, TX",
                "Dallas, TX", "Detroit, MI", "San Jose, CA", "Indianapolis, IN",
                "Jacksonville, FL", "San Francisco, CA", "Columbus, OH", "Austin, TX",
                "Memphis, TN", "Baltimore, MD", "Charlotte, ND", "Fort Worth, TX"]
    
    var filteredData: [String]!
    
    
    var emailUser: String = ""
    var pass: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
      
        citySearchTextField.delegate = self
//        citySearchTextfield.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        
        filteredData = data
        // Do any additional setup after loading the view.
    }
    

    @IBAction func backBtnWasPressed(_ sender: Any) {
        self.dismissDetail()
    }
    
    @IBAction func nextWasPressed(_ sender: Any) {
//        UIView.transition(from: userCredential, to: secondView, duration: 1, options: .curveEaseIn) { (done) in
//            self.secondView.isHidden = false
//        }
        
        firstView.presentView(toView: secondView)
        firstView.isHidden = true
        secondView.isHidden = false
        let uiview = UIView()
        secondView.presentView(toView: uiview)
        
    }
    
}

extension signInVC: UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell") as? CityCell {
            let city = data[indexPath.row]
            cell.cofigureCell(city: city)
            return cell
        }else{
            return UITableViewCell()
        }
    }
    
    
}

extension signInVC: UITextFieldDelegate {
    
}

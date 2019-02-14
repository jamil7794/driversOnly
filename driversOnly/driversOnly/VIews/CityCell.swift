//
//  CityCell.swift
//  driversOnly
//
//  Created by Jamil Jalal on 2/14/19.
//  Copyright © 2019 Jamil Jalal. All rights reserved.
//

import UIKit

class CityCell: UITableViewCell {
    
    
    @IBOutlet weak var cityLbl: UILabel!
    

    func cofigureCell(city: String){
        cityLbl.text = city
    }
    
    

}

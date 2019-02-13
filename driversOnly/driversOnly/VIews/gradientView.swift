//
//  gradientView.swift
//  driversOnly
//
//  Created by Jamil Jalal on 2/13/19.
//  Copyright © 2019 Jamil Jalal. All rights reserved.
//

import UIKit

class gradientView: UIView {

    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)  {
        didSet{
            self.setNeedsLayout()
        }
        // setting layout with the new color. change inside the storboard 65
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1){
        didSet{
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        // updating 2 colors 65
        gradientLayer.startPoint = CGPoint(x:0 ,y:0) //start ffrom top left 65
        gradientLayer.endPoint = CGPoint(x:1, y:1) // end in bottom right 65
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}

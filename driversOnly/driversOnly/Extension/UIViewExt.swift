//
//  UIViewExt.swift
//  driversOnly
//
//  Created by Jamil Jalal on 2/14/19.
//  Copyright © 2019 Jamil Jalal. All rights reserved.
//

import UIKit

class UIViewExt: UIView {

    func present(){
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromLeft
        self.window?.layer.add(transition, forKey: kCATransition)
    }

}

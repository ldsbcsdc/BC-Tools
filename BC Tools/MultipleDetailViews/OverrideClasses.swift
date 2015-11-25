//
//  OverrideClasses.swift
//  BC Tools
//
//  Created by studev18 on 11/25/15.
//  Copyright © 2015 PTS. All rights reserved.
//

import Foundation
import UIKit

class MyCustomButton: UIButton {
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.layer.cornerRadius = 7.0
        //self.layer.borderColor = UIColor.redColor().CGColor
        //self.layer.borderWidth = 1.5
        //self.backgroundColor = UIColor.blueColor()
        // self.tintColor = UIColor.whiteColor()
    }
}
//
//  BlueButton.swift
//  sub-classed-view
//
//  Created by Jonathan Wood on 9/10/15.
//  Copyright © 2015 Jonathan Wood. All rights reserved.
//

import UIKit

class BlueButton: UIButton {
    
    override func awakeFromNib() {
        layer.cornerRadius = 5.0
        backgroundColor = UIColor(red: 36/255, green: 135/255, blue: 195/255, alpha: 1)
        setTitleColor(UIColor.whiteColor(), forState: .Normal)
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}

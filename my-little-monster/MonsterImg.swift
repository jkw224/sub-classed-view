//
//  MonsterImg.swift
//  my-little-monster
//
//  Created by Jonathan Wood on 9/11/15.
//  Copyright © 2015 Jonathan Wood. All rights reserved.
//

import Foundation
import UIKit

class MonsterImg: UIImageView {
    
    // overriding initializer, and calling super ones
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        playIdleAnimation()
    }
    
    
    func playIdleAnimation(){
        self.image = UIImage(named: "idle1.png")
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        for x in 1...4 {
            let img = UIImage(named: "idle\(x).png")
            imgArray.append(img!)
        }
        
        self.animationImages = imgArray
        self.animationDuration = 1.2
        self.animationRepeatCount = 0
        self.startAnimating()
    }
    
    
    func playDeathAnimation() {
        self.image = UIImage(named: "dead5.png")
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        for x in 1...5 {
            let img = UIImage(named: "dead\(x).png")
            imgArray.append(img!)
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.5
        self.animationRepeatCount = 1
        self.startAnimating()
    }
    
}

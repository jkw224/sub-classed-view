//
//  ViewController.swift
//  my-little-monster
//
//  Created by Jonathan Wood on 9/10/15.
//  Copyright © 2015 Jonathan Wood. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monsterImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imgArray = [UIImage]()
        
        for x in 1...4 {
            let img = UIImage(named: "idle\(x).png")
            imgArray.append(img!)
        }
        
        monsterImg.animationImages = imgArray
        monsterImg.animationDuration = 1.2
        monsterImg.animationRepeatCount = 0
        monsterImg.startAnimating()
    }

}


//
//  DragImg.swift
//  my-little-monster
//
//  Created by Jonathan Wood on 9/11/15.
//  Copyright © 2015 Jonathan Wood. All rights reserved.
//

import Foundation
import UIKit

class DragImg: UIImageView {
    
    var originalPosition: CGPoint! // A point has an x and y coordinate
    var dropTarget: UIView? // see if dropped food or heart on top of character
    
    // Overriding UIImage Initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecorder: NSCoder) {
        super.init(coder: aDecorder)
    }
    
    // Setting center of superview as starting position
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        originalPosition = self.center
    }
    
    // Tracking dragging movement
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first {
            let position = touch.locationInView(self.superview)
            self.center = CGPointMake(position.x, position.y)
        }

    }
    
    // On touch end, post notification if item dropped on target
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        if let touch = touches.first, let target = dropTarget {
            
            let position = touch.locationInView(self.superview)
            
            if CGRectContainsPoint(target.frame, position) {
                NSNotificationCenter.defaultCenter().postNotification(NSNotification(name: "onTargetDropped", object: nil))
                // Notify us when item dropped on target
            }
        }
        
        self.center = originalPosition
    }
    
}

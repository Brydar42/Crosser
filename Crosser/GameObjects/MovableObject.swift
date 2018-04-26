//
//  MovableObject.swift
//  Crosser
//
//  Created by Rasmussen Darren K. on 4/5/18.
//  Copyright © 2018 Rasmussen Darren K. All rights reserved.
//  gameObject with movement
//  player deals with moving itself not included, Obstcile and Moving platform move from right to left at constant speed

import Foundation
import SpriteKit
class MovableObject: GameObject {
    var vel : CGPoint?
    override init(startPosition: CGPoint, imageName: String) {
        super.init(startPosition: startPosition, imageName: imageName)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func Update(currentTime: TimeInterval) {
        // calling super so we can use deltaTime recording in the super class
        super.Update(currentTime: currentTime)
        
    }
}

//
//  StaticGround.swift
//  Crosser
//
//  Created by Rasmussen Darren K. on 4/5/18.
//  Copyright © 2018 Rasmussen Darren K. All rights reserved.
//  non movable object, this one in particular is made for the first half
//-700 - 0 y,x -350 to 350
//therfore size y =700 units and 700 units arcoss

import Foundation
import SpriteKit
class StaticGround: GameObject {
    
    
    let Shape = CGRect(x: 0,y:-320, width: 320,height: 320)
    override init(startPosition: CGPoint, imageName: String) {
        super.init(startPosition: startPosition,imageName: imageName)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

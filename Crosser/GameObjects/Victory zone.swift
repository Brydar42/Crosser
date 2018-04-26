//
//  Victory zone.swift
//  Crosser
//
//  Created by Rasmussen Darren K. on 4/5/18.
//  Copyright © 2018 Rasmussen Darren K. All rights reserved.
//  Lilypads from frogger

import Foundation
import SpriteKit
class VictoryZone: StaticGround {
    //player touches this and wins
    init(startPosition: CGPoint) {
        super.init(startPosition: startPosition, imageName: "Safe")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //this.position = CGPoint(x:0,y:640)
}

//
//  Player.swift
//  Crosser
//
//  Created by Rasmussen Darren K. on 4/5/18.
//  Copyright © 2018 Rasmussen Darren K. All rights reserved.
//

import Foundation
import SpriteKit
class Player: GameObject {
        init() {
            super.init(startPosition: CGPoint(x: 0, y: -640), imageName: "frog")
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    func JumpUp() {
        self.position.y+=20
    }
    func JumpDown() {
        self.position.y-=20
    }
    func JumpLeft() {
        self.position.x-=20
    }
    func JumpRight() {
        self.position.x+=20
    }
}

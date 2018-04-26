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
    public func JumpUp() {
        self.position.y+=80
    }
    public func JumpDown() {
        self.position.y-=80
    }
    public func JumpLeft() {
        self.position.x-=80
    }
    public func JumpRight() {
        self.position.x+=80
    }
}

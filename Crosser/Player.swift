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
        
        public func update(location: CGPoint, dt: TimeInterval) {
            let velocity = CGPoint(x: (location.x - self.position.x) * CGFloat(dt),
                                   y: (location.y - self.position.y) * CGFloat(dt))
            print("x is:  \(velocity.x)")
            print("y is:  \(velocity.y)")
            self.position.x += velocity.x
            self.position.y += velocity.y
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
}

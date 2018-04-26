//
//  GameObject.swift
//  Crosser
//
//  Created by Rasmussen Darren K. on 4/5/18.
//  Copyright © 2018 Rasmussen Darren K. All rights reserved.
//

import Foundation
import SpriteKit

class GameObject: SKSpriteNode {
    init(startPosition: CGPoint, imageName: String) {
        let texture = SKTexture(imageNamed: imageName)
        super.init(texture: texture, color: UIColor.clear, size: texture.size())
        self.position = startPosition
    }
    func Update(currentTime: TimeInterval) {
        //no updating
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

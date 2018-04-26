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
    private var PlayerWin = false
    init() {
            super.init(startPosition: CGPoint(x: 0, y: -640), imageName: "Idle Front 1")
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    public func JumpUp() {
        let textureAnimation = [SKTexture(imageNamed: "Frog Jump Up 1"),
                                SKTexture(imageNamed: "Frog Jump Up 2"),
                                SKTexture(imageNamed: "Frog Jump Up 3")]
                                
        let animationAction = SKAction.animate(with: textureAnimation, timePerFrame:0.5)
        self.run(animationAction)
        self.position.y+=80
        
    }
    public func JumpDown() {
        let textureAnimation = [SKTexture(imageNamed: "Frog Jump Down 1"),
                                SKTexture(imageNamed: "Frog Jump Down 2"),
                                SKTexture(imageNamed: "Frog Jump Down 3")]
                                
        let animationAction = SKAction.animate(with: textureAnimation, timePerFrame: 0.5)
        self.run(animationAction)
        self.position.y-=80
    }
    public func JumpLeft() {
        let textureAnimation = [SKTexture(imageNamed: "Frog Jump Left 1"),
                                SKTexture(imageNamed: "Frog Jump Left 2"),
                                SKTexture(imageNamed: "Frog Jump Left 3")]
                                
        let animationAction = SKAction.animate(with: textureAnimation, timePerFrame: 0.5)
        self.run(animationAction)
        self.position.x-=80
        
    }
    public func JumpRight() {
        let textureAnimation = [SKTexture(imageNamed: "Frog Jump Right 1"),
                                SKTexture(imageNamed: "Frog Jump Right 2"),
                                SKTexture(imageNamed: "Frog Jump Right 3")]
                                
        let animationAction = SKAction.animate(with: textureAnimation, timePerFrame: 0.5)
        self.run(animationAction)
        self.position.x+=80
    }
    public func GetPlayerWin()->Bool {
        return self.PlayerWin
    }
    public func SetPlayerWin(NewValue: Bool) {
        self.PlayerWin=NewValue
    }
}

//
//  GameScene.swift
//  Crosser
//
//  Created by Rasmussen Darren K. on 4/5/18.
//  Copyright © 2018 Rasmussen Darren K. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var entities = [GKEntity]()
    var graphs = [String : GKGraph]()
    public var score=0.0;
    private var lastUpdateTime : TimeInterval = 0
    private var label : SKLabelNode?
    //private var spinnyNode : SKShapeNode?
    private let player=Player();
    override func sceneDidLoad() {

        self.lastUpdateTime = 0
        
        // Get label node from scene and store it for use later
        self.label = self.childNode(withName: "//helloLabel") as? SKLabelNode
        if let label = self.label {
            label.alpha = 0.0
            label.run(SKAction.fadeIn(withDuration: 2.0))
        }
    }
    
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
        // Initialize _lastUpdateTime if it has not already been
        if (self.lastUpdateTime == 0) {
            self.lastUpdateTime = currentTime
        }
        
        // Calculate time since last update
        let dt = currentTime - self.lastUpdateTime
        score+=dt;
        // Update entities
        for entity in self.entities {
            entity.update(deltaTime: dt)
        }
        
        self.lastUpdateTime = currentTime
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        guard let touch = touches.first else {
            return
        }
        if(touch.location(in: self).y>0)
        {
            player.JumpUp()
        }
        if(touch.location(in: self).y<0)
        {
            player.JumpDown()
        }
        if(touch.location(in: self).x<0)
        {
            player.JumpLeft()
        }
        if(touch.location(in: self).x>0)
        {
            player.JumpRight()
        }
        
        
    }
}

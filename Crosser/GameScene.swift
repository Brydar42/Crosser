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
    private var enemyspawner=GameObjectFactory()
    //private var spinnyNode : SKShapeNode?
    private let player = Player()
    //self.addChild(player)
    private var Ground = StaticGround(startPosition:CGPoint(x: 0,y:-320),imageName:"ground");
    private var Water = DeathZone(startPosition:CGPoint(x: 0,y:320));
    private var Victory=VictoryZone(startPosition:CGPoint(x: 0,y:640))
    override func sceneDidLoad() {
        self.lastUpdateTime = 0
        self.addChild(player)
        self.addChild(Ground)
        self.addChild(Water)
        self.addChild(Victory)
        
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
        //player.update(currentTime)
        
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

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
    func update(currentTime: TimeInterval) {
        // calling super so we can use deltaTime recording in the super class
        super.update(currentTime)
        
        guard let direction = vel?.asUnitVector else {
            return
        }
        
        position = position.travel(inDirection: direction, atVelocity: type.speed, for: deltaTime)
        if lookUpAction(Zombie.ActionDescriptionKeys.loopedWalkAnimation)?.state == .running {
            position = position.travel(in: direction, at: type.speed, for: deltaTime)
        }
    }
}

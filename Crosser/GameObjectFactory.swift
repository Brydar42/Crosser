//
//  GameObjectFactory.swift
//  Crosser
//
//  Created by Rasmussen Darren K. on 4/5/18.
//  Copyright © 2018 Rasmussen Darren K. All rights reserved.
//  A factory dedicated to making Game Objecets

import Foundation
class GameObjectFactory {
    /// makes a Obsticle
    ///
    /// - Parameter zombieType: optional ZombieType, if no ZombieType is provided will make a random zombie
    /// - Returns: a Zombie
    func makeObsticle(Obsticle: ObsticleTypes?) -> Obsticle {
        
        guard let ObjectType = ObjectType else {
            
            return randomObsticle()
        }
        
        return Obsticle(type: ObjectType)
    }
    
    /// creates a random Obsticle
    ///
    /// - Returns: a Obsticle
    private func randomObsticle() -> Obsticle {
        let rand: UInt32 = arc4random() % 3
        let ObjectType = ObsticleTypes(rawValue: rand)
        // forcing the unwrapping of zombieType with the "!"
        // we know that the ZombieType created will be either
        // 0, 1, 2 due to the "% 3" however
        // swifts debugger isnt smart enough to know that so
        // it assumes the ZombieType is optional
        // and asks us to unwrap it.
        // this is considered unsafe hence the complier warning
        // which is supressed with the "!"
        return Obsticle(type: ObsticleTypes!)
    }
    func makeMovingPlatform(Obsticle: ObsticleTypes?) -> Obsticle {
        
        guard let ObjectType = ObjectType else {
            
            return randomPlatform()
        }
        
        return MovingPlatform(type: ObjectType)
    }
    
    /// creates a random Obsticle
    ///
    /// - Returns: a Obsticle
    private func randomPlatform() -> Obsticle {
        let rand: UInt32 = arc4random() % 3
        let PlatformType = PlatformTypes(rawValue: rand)
        // forcing the unwrapping of zombieType with the "!"
        // we know that the ZombieType created will be either
        // 0, 1, 2 due to the "% 3" however
        // swifts debugger isnt smart enough to know that so
        // it assumes the ZombieType is optional
        // and asks us to unwrap it.
        // this is considered unsafe hence the complier warning
        // which is supressed with the "!"
        return MovingPlatform(type: PlatformTypes!)
    }
    
}

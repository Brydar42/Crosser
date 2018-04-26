//
//  GameObjectFactory.swift
//  Crosser
//
//  Created by Rasmussen Darren K. on 4/5/18.
//  Copyright © 2018 Rasmussen Darren K. All rights reserved.
//  A factory dedicated to making Game Objecets
// random araeas for ememeys 400 x for all first half -560,-480, -400,-320, -240,-160 second half 80, 160, 320, 400, 560
import Foundation
struct GameObjectFactory {
    /// makes a Obsticle
    ///
    /// - Parameter zombieType: optional ZombieType, if no ZombieType is provided will make a random zombie
    /// - Returns: a Zombie
    func makeObsticle(Obsticles: ObsticleTypes?) -> Obsticle {
        
        guard let Obsticles = Obsticles else {
            
            return randomObsticle()
        }
        
        return Obsticle (startPosition:0,0,type: Obsticles)
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
        //pos1,pos2,pos3,pos4,pos5,pos6
        return Obsticle(startPosition: 0,0, type: ObjectType!)
    }
    func makeMovingPlatform( MovingPlatform: PlatformTypes?) -> Obsticle {
        
        guard let MovingPlatform = MovingPlatform else {
            
            return randomPlatform()
        }
        
        return MovingPlatform (startPosition:0,0, type: PlatformTypes)
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
        return MovingPlatform(startPosition:0,0, type: PlatformTypes!)
    }
    
}

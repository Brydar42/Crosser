//
//  GameObjectFactory.swift
//  Crosser
//
//  Created by Rasmussen Darren K. on 4/5/18.
//  Copyright © 2018 Rasmussen Darren K. All rights reserved.
//  A factory dedicated to making Game Objecets
// random araeas for ememys -400 x for all
import Foundation
import SpriteKit
struct GameObjectFactory {
    /// makes a Obsticle
    ///
    /// - Parameter zombieType: optional ZombieType, if no ZombieType is provided will make a random zombie
    /// - Returns: a Zombie
    func makeObsticle(Obsticles: ObsticleTypes?) -> Obsticle {
        
        guard let Obsticles = Obsticles else {
            
            return randomObsticle()
        }
        var startPosition = CGPoint(x:-400,y:0)
        
        return Obsticle (startPosition: startPosition , type: Obsticles)
    }
    
    /// creates a random Obsticle
    ///
    /// - Returns: a Obsticle
    private func randomObsticle() -> Obsticle {
        let rand: UInt32 = arc4random_uniform(3)
        let ObjectType = ObsticleTypes(rawValue: rand)
        var startPosition = CGPoint(x:-400,y:0)
        // forcing the unwrapping of zombieType with the "!"
        // we know that the ZombieType created will be either
        // 0, 1, 2 due to the "% 3" however
        // swifts debugger isnt smart enough to know that so
        // it assumes the ZombieType is optional
        // and asks us to unwrap it.
        // this is considered unsafe hence the complier warning
        // which is supressed with the "!"
        //pos1,pos2,pos3,pos4,pos5,pos6
        let rand2: UInt32 = arc4random_uniform(6)
        switch rand2 {
        case 0:
            startPosition = CGPoint(x:-400,y:-560)
            break
        case 1:
            startPosition = CGPoint(x:-400,y:-480)
            break
        case 2:
            startPosition = CGPoint(x:-400,y:-400)
            break
        case 3:
            startPosition = CGPoint(x:-400,y:-320)
            break
        case 4:
            startPosition = CGPoint(x:-400,y:-240)
            break
        case 5:
            startPosition = CGPoint(x:-400,y:-160)
            break
        default:
            startPosition = CGPoint(x:-400,y:0)
        }
       
        //startPosition.x = -400
        return Obsticle(startPosition: startPosition, type: ObjectType!)
    }
    func makeMovingPlatform( PlatformType: PlatformTypes?) -> MovingPlatform {
        
        guard let PlatformType = PlatformType else {
            
            return randomPlatform()
        }
        var startPosition = CGPoint(x:-400,y:0)
        let rand2: UInt32 = arc4random_uniform(5)
        switch rand2 {
        case 0:
            startPosition = CGPoint(x:-400,y:80)
            break
        case 1:
            startPosition = CGPoint(x:-400,y:160)
            break
        case 2:
            startPosition = CGPoint(x:-400,y:320)
            break
        case 3:
            startPosition = CGPoint(x:-400,y:400)
            break
        case 4:
            startPosition = CGPoint(x:-400,y:560)
            break
        default:
            startPosition = CGPoint(x:-400,y:0)
        }
        
        return MovingPlatform(startPosition:startPosition, type: PlatformType)
    }
    
    /// creates a random Obsticle
    ///
    /// - Returns: a Obsticle
    private func randomPlatform() -> MovingPlatform {
        let rand: UInt32 = arc4random_uniform(2)
        let PlatformType = PlatformTypes(rawValue: rand)
        // forcing the unwrapping of zombieType with the "!"
        // we know that the ZombieType created will be either
        // 0, 1, 2 due to the "% 3" however
        // swifts debugger isnt smart enough to know that so
        // it assumes the ZombieType is optional
        // and asks us to unwrap it.
        // this is considered unsafe hence the complier warning
        // which is supressed with the "!"
        var startPosition = CGPoint(x:-400,y:0)
        let rand2: UInt32 = arc4random_uniform(5)
        switch rand2 {
        case 0:
            startPosition = CGPoint(x:-400,y:80)
            break
        case 1:
            startPosition = CGPoint(x:-400,y:160)
            break
        case 2:
            startPosition = CGPoint(x:-400,y:320)
            break
        case 3:
            startPosition = CGPoint(x:-400,y:400)
            break
        case 4:
            startPosition = CGPoint(x:-400,y:560)
            break
        default:
            startPosition = CGPoint(x:-400,y:0)
        }
        return MovingPlatform(startPosition:startPosition, type: PlatformType!)
    }
    
}

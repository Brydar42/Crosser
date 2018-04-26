//
//  SpawnManager.swift
//  Crosser
//
//  Created by Rasmussen Darren K. on 4/26/18.
//  Copyright © 2018 Rasmussen Darren K. All rights reserved.
//

import Foundation
import SpriteKit
class SpawnManager2 {
    /*
    // we will be giving it our GameScene, but since this class doesn't need the additional
    // functionality provided by GameScene we can reduce this to just SKScene or SKNode
    // limiting the scope
    // weak because we dont need a strong reference
    weak var scene : SKScene?
    
    // as "let" constants these can never be changed after creation but we can still reference them
    let spawnArea : CGRect
    let randMin : Double
    let randMax : Double
    
    // MARK: Private vars since they are never changed outside of this class.
    private var startTime : TimeInterval?
    private var nextSpawnTime : TimeInterval?
    
    private let GameObjectFactory = GameObjectFactory()
    
    /// init for the spawn manager
    ///
    /// - Parameters:
    ///   - givenSpawnArea: the area you wish the zombies to spawn in
    ///   - min: the minimum time interval for a zombie to spawn
    ///   - max: the maximum time interval for a zombie to spawn
    init(min : TimeInterval, max : TimeInterval) {
        randMin = min
        randMax = max
        // nextSpawnTime is initalized last due to the other values needing to be initialized before calling
        // self even though self is not explicitly used.
        //nextSpawnTime = random (min: randMin, max: randMax)
    }
    
    
    /// update time method to be called in the scene
    ///
    /// - Parameter time: current time
    /// - Returns: a zombie or nothing
    func update(time: TimeInterval) -> MovableObject? {
        guard let scene = scene, let startTime = startTime, let nextSpawnTime = nextSpawnTime else {
            guard let _ = self.scene else {
                return nil
            }
            // set the start time and exit the loop since we wont be able to calculate the delta this time
            self.startTime = time
            return nil
        }
        
        // second time the loop is run we can now
        // calculate the delta
        let deltaTime = time - startTime
        
        guard deltaTime > nextSpawnTime else {
            // exit early if the delta is less than the next spawn time
            return nil
        }
        
        // update the time for the next zombie spawn
        self.nextSpawnTime = nextSpawnTime + random(min: randMin, max: randMax)
        
        // spawn a obsticle and a platform
        let myPlatform = GameObjectFactory.makeMovingPlatform(PlatformType: nil)
        let myObsticle = GameObjectFactory.makeObsticle(Obsticles: nil)
        
        // crude but effective at moving the zombies in the right direction
        myPlatform.vel = CGPoint(x: 1,y: 0)
        myObsticle.vel = CGPoint(x: 1,y: 0)
        // adding the zombie to the game scene
        scene.addChild(myPlatform)
        scene.addChild(myObsticle)
        // moving the zombie to the spawn area
        
        // returning a strong refernce to the zombie incase more is wished to be done
        return myPlatform
        
    }
    private func random(min: TimeInterval, max: TimeInterval) -> Double {
        return Double (Double(arc4random())/Double(max) + Double(min))
    }*/
}

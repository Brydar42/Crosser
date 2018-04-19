//
//  Obsticle.swift
//  Crosser
//
//  Created by Rasmussen Darren K. on 4/5/18.
//  Copyright © 2018 Rasmussen Darren K. All rights reserved.
//  these are moving objects that the players avoid
//  seven zones to avoid
import Foundation
import SpriteKit
public enum ObsticleTypes: UInt32
{
    case Truck = 0
    case Car
    
    var speed: CGFloat {
        switch self {
        case .Truck:
            return 10.0
        case .Car:
            return 15.0
            
        }
    }
}
class Obsticle: MovableObject {
    let type: ObsticleTypes
    //override var vel : CGPoint?
    init(startPosition: CGPoint, type: ObsticleTypes) {
                    self.type = type
            //super.init(imageName: Zombie.defaultTexture)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

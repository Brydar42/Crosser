//
//  Moving platform.swift
//  Crosser
//
//  Created by Rasmussen Darren K. on 4/5/18.
//  Copyright © 2018 Rasmussen Darren K. All rights reserved.
//  built to be similar to the logs and turtles in frogger
// seven zones to cross
import Foundation
import SpriteKit
enum PlatformTypes: UInt32{
    case Log=0
    case Turtle
    
    var speed: CGFloat {
        switch self {
        case .Truck:
            return 10.0
        case .Car:
            return 15.0
            
        }
    }
}
class MovingPlatform: MovableObject {
    
}



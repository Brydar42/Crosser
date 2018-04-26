//
//  Moving platform.swift
//  Crosser
//
//  Created by Rasmussen Darren K. on 4/5/18.
//  Copyright © 2018 Rasmussen Darren K. All rights reserved.
//  built to be similar to the logs and turtles in frogger
// six zones to cross
import Foundation
import SpriteKit
enum PlatformTypes: UInt32{
    case Log=0
    case Turtle
    
    var speed: CGFloat {
        switch self {
        case .Log:
            return 10.0
        case .Turtle:
            return 15.0
            
        }
    }
}
class MovingPlatform: MovableObject {
    let type: PlatformTypes
    //var vel : CGPoint?
    init(startPosition: CGPoint, type: PlatformTypes) {
        self.type = type
        if (self.type==PlatformTypes.Turtle) {
            super.init(startPosition: startPosition, imageName: "turtle 1")
            
        }
        //praise log
        else
        {
            super.init(startPosition: startPosition, imageName: "Log 3")
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }}



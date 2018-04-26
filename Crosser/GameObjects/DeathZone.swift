//
//  DeathZone.swift
//  Crosser
//
//  Created by Rasmussen Darren K. on 4/5/18.
//  Copyright © 2018 Rasmussen Darren K. All rights reserved.
//  this is for the second half of the game player loses on touch the water part of the game
//
import Foundation
import SpriteKit
class DeathZone: StaticGround {
    init(startPosition: CGPoint) {
        super.init(startPosition: startPosition, imageName: "water")
        self.scale(to: CGSize(width: 800, height: 550))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func Killplayer() {
        //player lands here and dies
    }
    //self.position = CGPoint(x:0,y:320)
    
}

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

    var sparkEmmiter:SKEmitterNode!
    //override var vel : CGPoint?
    init(startPosition: CGPoint, type: ObsticleTypes) {
        self.type = type
        var imageName = "";
        if (self.type==ObsticleTypes.Car) {
            let CarNumber = arc4random_uniform(3)
            switch CarNumber
            {
            case 0:
                
                imageName = "car 1"
                break
            case 1:
                imageName = "car 2"
                break
            case 2:
                imageName = "car 3"
                break
            default:
                break
            }
        }
        //must be a truck
        else if(self.type==ObsticleTypes.Truck)
        {
            let TruckNumber = arc4random_uniform(2)
            switch TruckNumber
            {
            case 0:
                imageName = "Truck 1"
                break
            case 1:
                imageName = "Truck 2"
                break
            default:
                break
            }
        }

        super.init(startPosition: startPosition, imageName: imageName)
        //addTrailToVehicle()
        
    }
    func Killplayer() {
        //player collides with enemy and dies
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
/*func addTrailToVehicle(){
    let sparkEmmitterPath               =   NSBundle.mainBundle().pathForResource("PierrePath", ofType: "sks")!
    // PierrePath is the EmitterNode name!
    sparkEmmiter                        =   NSKeyedUnarchiver.unarchiveObjectWithFile(sparkEmmitterPath) as SKEmitterNode
    sparkEmmiter.position               =   CGPoint(x:15,y:-15.0)
    sparkEmmiter.name                   =   "PierrePath"
    sparkEmmiter.zPosition              =   22.0
    sparkEmmiter.targetNode             =   self.scene
    self.addChild(sparkEmmiter)
    //Here car is the Target node. where Trail Added.
    }*/
}

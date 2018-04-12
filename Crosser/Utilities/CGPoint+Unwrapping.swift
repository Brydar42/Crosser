//
//  CGPoint+Unwrapping.swift
//  MetalWarriorsTribute
//
//  Created by Kevin Kruusi on 2018-04-03.
//  Copyright © 2018 kevin. All rights reserved.
//

import Foundation
import SpriteKit

extension CGPoint {
    
    static func make(from dictionary: [AnyHashable: Any]) -> CGPoint {
        let xValue = CGFloat(dictionary[Constants.Keys.xValue] as! Double)
        let yValue = CGFloat(dictionary[Constants.Keys.yValue] as! Double)
        return CGPoint(x: xValue, y: yValue)
    }
}

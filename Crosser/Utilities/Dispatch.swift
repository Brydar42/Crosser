//
//  Dispatch.swift
//  MetalWarriorsTribute
//
//  Created by Kevin Kruusi on 2018-03-28.
//  Copyright © 2018 kevin. All rights reserved.
//

import Foundation


final class Dispatch {
    
    private static let backgroundThreadLabel = "BackgroundThreadLabel"
    
    static func run_on_main(block: @escaping ()->Void) {
        if Thread.isMainThread {
            block()
            return
        }
        DispatchQueue.main.async {
            block()
        }
    }
    
    static func run_in_background(block: @escaping ()->Void) {
        DispatchQueue.init(label: Dispatch.backgroundThreadLabel).async {
            block()
        }
    }
}

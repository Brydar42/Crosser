//
//  DidGameEndObserver.swift
//  Crosser
//
//  Created by Rasmussen Darren K. on 4/26/18.
//  Copyright © 2018 Rasmussen Darren K. All rights reserved.
//  checks if player won then spawn no more enemies

import Foundation
protocol Observer {
    var id : Int { get } // property to get an id
    func update<T>(with newValue: T)
}

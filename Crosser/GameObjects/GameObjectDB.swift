//
//  GameObjectDB.swift
//  Crosser
//
//  Created by Rasmussen Darren K. on 4/12/18.
//  Copyright © 2018 Rasmussen Darren K. All rights reserved.
//

import Foundation
import SpriteKit
import FirebaseDatabase

typealias DBResult = ([AnyHashable:Any])-> Void

final class GameObjectDB
{
    enum DBErrors:Error {
        case noSchema
        case expectDictionary
        
        
    }
    let dataBase: DatabaseReference
    
    
    init() {
        dataBase=Database.database().reference()
    }
    func requestStats(completion:@escaping DBResult) {
        dataBase.child("Lowest Score").observe(DataEventType.value) { (snapshot) in
            print(snapshot.description)
            guard let dictionary = snapshot.value as? [AnyHashable:Any] else {
                return
            }
            completion(dictionary)
        }
    }
    
}

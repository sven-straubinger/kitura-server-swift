//
//  Toilet.swift
//  kitura-server-swift
//
//  Created by Sven Straubinger on 06/02/2017.
//
//

import Foundation

class Toilet: NSObject {
    
    var id     = 1
    var locked = false
    var name   = "RT-1"
    
    func toJSON() -> Dictionary<String, AnyObject> {
        return [
            "id": self.id as AnyObject,
            "locked": self.locked as AnyObject,
            "name": self.name as AnyObject
        ]
    }

}

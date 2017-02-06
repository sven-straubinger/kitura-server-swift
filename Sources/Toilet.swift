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
    
    func toJSON() -> Dictionary<String, Any> {
        return [
            "id": self.id,
            "locked": self.locked,
            "name": self.name
        ]
    }
    
    static func dummies() -> [Toilet] {
        var allVendors = Array<Toilet>()
        allVendors.append(Toilet());
        allVendors.append(Toilet());
        allVendors.append(Toilet());
        
        return allVendors
    }

}

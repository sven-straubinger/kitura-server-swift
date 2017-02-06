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
    
    init(_ id: Int,_ locked: Bool,_ name: String) {
        self.id = id
        self.locked = locked
        self.name = name
    }
    
    func toJSON() -> Dictionary<String, Any> {
        return [
            "id": self.id,
            "locked": self.locked,
            "name": self.name
        ]
    }
    
    static func dummies() -> [Toilet] {
        var allVendors = Array<Toilet>()
        allVendors.append(Toilet(1,true,"RT-1"));
        allVendors.append(Toilet(2,false,"S-1"));
        allVendors.append(Toilet(3,true,"RT-2"));
        allVendors.append(Toilet(4,false,"S-2"));
        
        return allVendors
    }

}

//
//  Toilet.swift
//  kitura-server-swift
//
//  Created by Sven Straubinger on 06/02/2017.
//
//
import Foundation

public class Toilet: NSObject {
    
    // Properties
    var id: Int
    var locked: Bool
    var name: String
    
    // Constructor
    init(_ id: Int,_ locked: Bool,_ name: String) {
        self.id = id
        self.locked = locked
        self.name = name
    }
    
    // JSON representation
    func toJSON() -> Dictionary<String, Any> {
        return [
            "id": self.id,
            "locked": self.locked,
            "name": self.name
        ]
    }
    
    // Dummy data
    static func dummies() -> [Toilet] {
        var allVendors = Array<Toilet>()
        allVendors.append(Toilet(1,true,"Reutlingen-Basement-1"));
        allVendors.append(Toilet(2,false,"Stuttgart-Main-Floor-1"));
        allVendors.append(Toilet(3,true,"Reutlingen-Basement-2"));
        allVendors.append(Toilet(4,false,"Stuttgart-Main-Floor-2"));
        
        return allVendors
    }
    
}

//
//  Mocky.swift
//  Dessert
//
//  Created by Juan Manuel Moreno on 16/10/2019.
//  Copyright © 2019 Juan Manuel Moreno. All rights reserved.
//

import Foundation

struct Mocky: Codable {
    
    // MARK: - Character
    
    let mockyId: String?
    let type: String?
    let name: String?
    let ppu: String?
    var batters: Batters?
    var topping: [Factor]?
    
    // MARK: - Init
    
    init(dictionary: [String:AnyObject]) {
        self.mockyId = dictionary[Requester.JSONResponseKeys.mockyId] as? String
        self.type = dictionary[Requester.JSONResponseKeys.type] as? String
        self.name = dictionary[Requester.JSONResponseKeys.name] as? String
        self.ppu = dictionary[Requester.JSONResponseKeys.ppu] as? String
        self.batters = Batters(dictionary: dictionary[Requester.JSONResponseKeys.batters] as! [String:AnyObject])
        var factor = [Factor]()
        if let factorDictionary: [AnyObject] = dictionary[Requester.JSONResponseKeys.topping] as! [AnyObject] {
            for factorT in factorDictionary {
                factor.append(Factor(dictionary: factorT as! [String : AnyObject]))
            }
        }
        self.topping = factor
    }
}


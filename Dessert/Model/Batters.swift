//
//  Batters.swift
//  Dessert
//
//  Created by Juan Manuel Moreno on 16/10/2019.
//  Copyright © 2019 Juan Manuel Moreno. All rights reserved.
//

import Foundation

struct Batters: Codable {
    
    // MARK: - Character
    
    var batter: [Factor]?
    let topping: [Factor]?

    
    // MARK: - Init
    
    init(dictionary: [String:AnyObject]) {
        var factor = [Factor]()
        if let factorDictionary: [AnyObject] = dictionary[Requester.JSONResponseKeys.batter] as! [AnyObject] {
            for factorT in factorDictionary {
                factor.append(Factor(dictionary: factorT as! [String : AnyObject]))
            }
        }
        self.batter = factor
        self.topping = factor
    }
}

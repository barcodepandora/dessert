//
//  Factor.swift
//  Dessert
//
//  Created by Juan Manuel Moreno on 16/10/2019.
//  Copyright © 2019 Juan Manuel Moreno. All rights reserved.
//

import Foundation

struct Factor: Codable {
    
    // MARK: - Character
    
    var factorId: String?
    var type: String?
    
    // MARK: - Init
    
    init() {}
    
    init(dictionary: [String:AnyObject]) {
        self.factorId = dictionary[Requester.JSONResponseKeys.mockyId] as? String
        self.type = dictionary[Requester.JSONResponseKeys.type] as? String
    }    
}


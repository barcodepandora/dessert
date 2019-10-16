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
    
    let factorId: String?
    let type: String?
    
    // MARK: - Init
    
    init(dictionary: [String:AnyObject]) {
        self.factorId = dictionary[Requester.JSONResponseKeys.mockyId] as? String
        self.type = dictionary[Requester.JSONResponseKeys.type] as? String
    }    
}


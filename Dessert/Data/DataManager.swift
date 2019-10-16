//
//  DataManager.swift
//  Dessert
//
//  Created by Juan Manuel Moreno on 16/10/2019.
//  Copyright © 2019 Juan Manuel Moreno. All rights reserved.
//

import Foundation

protocol DataFoundation {

    func getMocky() -> Mocky?
    
    func writeMocky(_ mocky: Mocky)
    
}

class DataManager: DataFoundation {
    
    func getMocky() -> Mocky? {
        return nil
    }
    
    func writeMocky(_ mocky: Mocky) {
    }    
}


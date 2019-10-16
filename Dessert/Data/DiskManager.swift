//
//  DiskManager.swift
//  Dessert
//
//  Created by Juan Manuel Moreno on 16/10/2019.
//  Copyright © 2019 Juan Manuel Moreno. All rights reserved.
//

import Foundation
import Disk

class DiskManager: DataManager {
    
    // MARK: - Shared
    
    static let shared = DiskManager()
    
    // MARK: - Init
    
    override init() {
        super.init()
    }
    
    // MARK: - Cache
    
    override func getMocky() -> Mocky? {
        var mocky: Mocky?
        do {
            let mocky = try Disk.retrieve("0001", from: .documents, as: Mocky.self)
        } catch {
            print("Unexpected error: \(error).")
        }
        return mocky
    }
    
    override func writeMocky(_ mocky: Mocky) {
        do {
            try Disk.save(mocky, to: .documents, as: mocky.mockyId!)
        } catch {
            print("Unexpected error: \(error).")
        }

    }
}



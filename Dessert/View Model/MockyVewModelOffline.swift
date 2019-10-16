//
//  MockyVewModelOffline.swift
//  Dessert
//
//  Created by Juan Manuel Moreno on 16/10/2019.
//  Copyright © 2019 Juan Manuel Moreno. All rights reserved.
//

import Foundation

class MockyViewModelOffline: MockyViewModel {
    
    override func getMocky() {
        var mocky = DiskManager.shared.getMocky()
        print("\(mocky)")
    }
    
    override func writeMocky(_ mocky: Mocky) {
        DiskManager.shared.writeMocky(mocky)
    }
}

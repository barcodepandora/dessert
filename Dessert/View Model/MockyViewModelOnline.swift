//
//  MockyViewModelOnline.swift
//  Dessert
//
//  Created by Juan Manuel Moreno on 16/10/2019.
//  Copyright © 2019 Juan Manuel Moreno. All rights reserved.
//

import Foundation

class MockyViewModelOnline: MockyViewModel {
    
    override func getMocky() {
        Requester.getMocky()  { (success, mocky, error) in
            DispatchQueue.main.async {
                if success {
                    MockyViewModelOffline().writeMocky(mocky!)
                    self.mocky = mocky
                    self.delegate?.showMocky(mocky!)
                }
            }
        }
    }
}

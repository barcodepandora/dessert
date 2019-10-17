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
                    MockyViewModelOffline().saveMocky(mocky!)
                    self.mocky = mocky
                    self.delegate?.showMocky(mocky!)
                }
            }
        }
    }
    
    override func addFactor(_ factor: Factor) {
        super.addFactor(factor)
        MockyViewModelOffline().saveMocky(self.mocky!)
        // TODO: Save mocky for online
        self.delegate!.refresh()
    }

    override func removeFactor(_ factorId: Int) {
        super.removeFactor(factorId)
        MockyViewModelOffline().saveMocky(self.mocky!)
        // TODO: Remove mocky for online
        self.delegate!.refresh()
    }
}

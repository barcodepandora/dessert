//
//  MockyViewModel.swift
//  Dessert
//
//  Created by Juan Manuel Moreno on 16/10/2019.
//  Copyright © 2019 Juan Manuel Moreno. All rights reserved.
//

import Foundation

protocol ViewModelBehavoir {

    func getMocky()
    func saveMocky(_ mocky: Mocky)
    func checkFactor()
    func uncheckFactor()
    func checkAllFactor()
    func addFactor(_ factor: Factor)
    func removeFactor(_ factorId: Int)
    
}

protocol ViewModelDelegate: class {
    
    func showMocky(_ mocky: Mocky)
    func tellAllFactor()
    func refresh()
}

class MockyViewModel: ViewModelBehavoir {
    
    // MARK: - Character
    
    var mocky: Mocky?
    var factorForBakin = 0
    weak var delegate: ViewModelDelegate?
    
    // MARK: - Protocol
    
    func getMocky() {}
    
    func saveMocky(_ mocky: Mocky) {}
    
    func checkAllFactor() {
        if self.factorForBakin == self.mocky?.batters?.batter?.count {
            self.delegate?.tellAllFactor()
        }
    }
    
    func checkFactor() {
        self.factorForBakin = self.factorForBakin + 1
    }
    
    func uncheckFactor() {
        self.factorForBakin = self.factorForBakin - 1
    }
    
    func addFactor(_ factor: Factor) {
        self.mocky?.topping?.append(factor)
    }
    
    func removeFactor(_ factorId: Int) {
        self.mocky?.topping?.remove(at: factorId)
    }
}

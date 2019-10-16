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
                print("MOCKY = \(mocky)")
                print("Batters = \(mocky?.batters)")
                if success {
                    MockyViewModelOffline().writeMocky(mocky!)
                    self.mocky = mocky
                    self.delegate?.showMocky(mocky!)
                    
//                    if let popularMovies = collectionShow {
//                        self.summaryViewController.popularMoviesArray = popularMovies
//                        self.summaryViewModelOffline.writePopularMovies(popularMovies)
//                        self.refreshSummary()
//                    }
//                } else {
//                    self.summaryViewController.displayAlertView("Error Request Popular", error)
                }
            }
        }

    }
}

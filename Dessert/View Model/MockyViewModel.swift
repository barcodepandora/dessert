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
    
    func writeMocky(_ mocky: Mocky)

}

protocol ViewModelDelegate: class {
    
    func showMocky(_ mocky: Mocky)
    
    func reloadTable(type: Int)
}

class MockyViewModel: ViewModelBehavoir {
    
    var mocky: Mocky?
    weak var delegate: ViewModelDelegate?
    
    init() {
//        repository = MoviesRepsository()
//        self.mocky = Mocky()
    }
    
    func getMocky() {
//        Requester.getMocky()  { (success, mocky, error) in
//            DispatchQueue.main.async {
//                print("MOCKY = \(mocky)")
//                print("Batters = \(mocky?.batters)")
//                if success {
////                    if let popularMovies = collectionShow {
////                        self.summaryViewController.popularMoviesArray = popularMovies
////                        self.summaryViewModelOffline.writePopularMovies(popularMovies)
////                        self.refreshSummary()
////                    }
////                } else {
////                    self.summaryViewController.displayAlertView("Error Request Popular", error)
//                }
//            }
//        }
//
    }
    
    func writeMocky(_ mocky: Mocky) {}
}
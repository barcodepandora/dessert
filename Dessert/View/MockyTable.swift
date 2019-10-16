//
//  MockyTable.swift
//  Dessert
//
//  Created by Juan Manuel Moreno on 16/10/2019.
//  Copyright © 2019 Juan Manuel Moreno. All rights reserved.
//

import Foundation
import UIKit

extension MockyViewController: UITableViewDataSource {
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (self.viewModel!.mocky?.batters?.batter!.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        if let showArray = self.dictionaryForShowArrays![navigationItem.title!] {
//            movie = showArray[(indexPath as NSIndexPath).row]
//        }

        let cellReuseId = "factor"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseId, for: indexPath) as! FactorTableViewCell
        (cell as FactorTableViewCell).type.text = (self.viewModel!.mocky?.batters?.batter![indexPath.row] as! Factor).type
        (cell as FactorTableViewCell).check.setTitle(self.unchecked,for: .normal)
        return cell
    }
}

extension MockyViewController: UITableViewDelegate {
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
//        let controller = storyboard!.instantiateViewController(withIdentifier: "Detail") as! ShowViewController
//        
//        if let showArray = self.dictionaryForShowArrays![navigationItem.title!] {
//            controller.selectedMovie = showArray[(indexPath as NSIndexPath).row]
//            
//            let transition = CATransition() // Transition
//            transition.duration = 2
//            transition.type = CATransitionType.push
//            transition.subtype = CATransitionSubtype.fromRight
//            transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
//            self.view.window!.layer.add(transition, forKey: kCATransition)
//
//            navigationController!.pushViewController(controller, animated: true)
//        }
    }    
}

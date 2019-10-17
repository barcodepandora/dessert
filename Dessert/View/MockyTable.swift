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
        return (self.viewModel!.mocky?.topping!.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellReuseId = "factor"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseId, for: indexPath) as! FactorTableViewCell
        (cell as FactorTableViewCell).type.text = (self.viewModel!.mocky?.topping![indexPath.row] as! Factor).type
        (cell as FactorTableViewCell).check.setTitle(self.unchecked,for: .normal)
        (cell as FactorTableViewCell).remove.tag = indexPath.row
        return cell
    }
}

extension MockyViewController: UITableViewDelegate {
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }    
}

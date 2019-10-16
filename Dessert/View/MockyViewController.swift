//
//  MockyViewController.swift
//  Dessert
//
//  Created by Juan Manuel Moreno on 16/10/2019.
//  Copyright © 2019 Juan Manuel Moreno. All rights reserved.
//

import UIKit

class MockyViewController: UIViewController, ViewModelDelegate {

//    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var table: UITableView!
    
    var mocky: Mocky?
    var viewModel: MockyViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = MockyViewModelOnline()
//        viewModel = MockyViewModelOffline()
        viewModel!.delegate = self
        viewModel!.getMocky()
        
    }

    func showMocky(_ mocky: Mocky) {
        self.table.dataSource = self
        self.table.delegate = self

        self.table.reloadData()
    }
    
    func reloadTable(type: Int) {
        DispatchQueue.main.sync {
//            self.tableView.reloadRows(at: [IndexPath(row: type, section: 0)], with: .fade)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

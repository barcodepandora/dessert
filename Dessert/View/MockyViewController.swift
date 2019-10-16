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

    let unchecked = "Escoger"
    let checked = "Listo"
    
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

    func tellAllFactor() {
        let alertController = UIAlertController(title: "HOLA", message: "La preparación finalizó.", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default) { action in
        }
        alertController.addAction(OKAction)
        self.present(alertController, animated: true) {}
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func check(_ sender: Any) {
        if (sender as! UIButton).title(for: .normal) == self.unchecked {
            (sender as! UIButton).setTitle(self.checked,for: .normal)
            self.viewModel?.factorForBakin = self.viewModel!.factorForBakin + 1
        } else {
            (sender as! UIButton).setTitle(self.unchecked,for: .normal)
            self.viewModel?.factorForBakin = self.viewModel!.factorForBakin - 1
        }
        self.viewModel!.checkAllFactor()
    }
}

//
//  MockyViewController.swift
//  Dessert
//
//  Created by Juan Manuel Moreno on 16/10/2019.
//  Copyright © 2019 Juan Manuel Moreno. All rights reserved.
//

import UIKit

class MockyViewController: UIViewController, ViewModelDelegate {

    // MARK: - Outlet
    
    @IBOutlet weak var table: UITableView!
    
    // MARK: - Character
    
    var mocky: Mocky?
    var viewModel: MockyViewModel?
    let unchecked = "Escoger"
    let checked = "Listo"
    
    // MARK: - View
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = MockyViewModelOnline()
        viewModel!.delegate = self
        viewModel!.getMocky()
        
    }

    func prepareTable() {
        self.table.dataSource = self
        self.table.delegate = self
    }
    
    // MARK: - View Model Delegate
    
    func showMocky(_ mocky: Mocky) {
        self.prepareTable()
        self.table.reloadData()
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

    // MARK: - Action
    
    @IBAction func check(_ sender: Any) {
        if (sender as! UIButton).title(for: .normal) == self.unchecked {
            (sender as! UIButton).setTitle(self.checked,for: .normal)
            self.viewModel?.checkFactor()
        } else {
            (sender as! UIButton).setTitle(self.unchecked,for: .normal)
            self.viewModel?.uncheckFactor()
        }
        self.viewModel!.checkAllFactor()
    }
}

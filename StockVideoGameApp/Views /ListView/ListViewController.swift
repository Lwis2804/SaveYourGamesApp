//
//  ListViewController.swift
//  StockVideoGameApp
//
//  Created by LUIS GONZALEZ on 07/09/23.
//

import UIKit

class ListViewController: UIViewController {
    
    @IBOutlet weak var titleList: UILabel!
    @IBOutlet weak var tableList: UITableView!
    
    
    var recibeDatos : String?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleList.text = recibeDatos
        setUpTableGameList()
    }

    
    func setUpTableGameList() {
        self.tableList.delegate = self
        self.tableList.dataSource = self
        tableList.register(ListCellTableViewCell.nib, forCellReuseIdentifier: ListCellTableViewCell.identifier)
    }

    

}

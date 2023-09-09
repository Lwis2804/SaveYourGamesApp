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
    
    
    var videoGameName : String?
    var videoGameConsol : String?
    var videoGameStatus : String? 

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTableGameList()
    }

    
    func setUpTableGameList() {
        self.tableList.delegate = self
        self.tableList.dataSource = self
        tableList.register(ListCellTableViewCell.nib, forCellReuseIdentifier: ListCellTableViewCell.identifier)
    }

    

}

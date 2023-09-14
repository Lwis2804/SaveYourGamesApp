//
//  ListViewController.swift
//  StockVideoGameApp
//
//  Created by LUIS GONZALEZ on 07/09/23.
//

import UIKit

class ListViewController: UIViewController {
    
    @IBOutlet weak var titleList: UILabel!{
        didSet{self.titleList.layer.cornerRadius = 10 }
    }
    @IBOutlet weak var tableList: UITableView!{
        didSet{self.tableList.layer.cornerRadius = 10 }
    }
    @IBOutlet weak var backButton: UIView!{
        didSet{self.backButton.layer.cornerRadius = 10 }
    }
    @IBOutlet weak var btnBtnAgregarNVG: UIButton!{
        didSet{self.btnBtnAgregarNVG.layer.cornerRadius = 10 }
    }
    
    var videoGameName : String?
    var videoGameConsol : String?
    var videoGameStatus : String?
    var videoGameRate : String?
    var arrayConsolsTypes : [String] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableGameList()
        validateConsol(consol: videoGameConsol)
    }
    
    func validateConsol(consol : String?) {
        if !arrayConsolsTypes.isEmpty {
            for title in arrayConsolsTypes{
                if title != consol {
                    arrayConsolsTypes.append(title)
                }
            }
        }else{
            arrayConsolsTypes.append(consol ?? "")
        }
    }

    
    func setUpTableGameList() {
        self.tableList.delegate = self
        self.tableList.dataSource = self
        tableList.register(ListCellTableViewCell.nib, forCellReuseIdentifier: ListCellTableViewCell.identifier)
    }

    
    @IBAction func btnGoToRegisterVideoGame(_ sender: Any) {
        let goToRegister = RegisterViewController()
        navigationController?.pushViewController(goToRegister, animated: true)
    }
    
    

}

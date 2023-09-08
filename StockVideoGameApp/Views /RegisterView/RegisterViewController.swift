//
//  RegisterViewController.swift
//  StockVideoGameApp
//
//  Created by LUIS GONZALEZ on 07/09/23.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var lblTitleMyVG: UILabel!{
        didSet{self.lblTitleMyVG.layer.cornerRadius = 10}
    }
    @IBOutlet weak var imageMyVG: UIImageView!
    @IBOutlet weak var addVGTitletxt: UITextField!
    @IBOutlet weak var chosePlataform: UIPickerView!{
        didSet{self.chosePlataform.layer.cornerRadius = 10}
    }
    @IBOutlet weak var addStatustxt: UITextField!
    @IBOutlet weak var backgroundImage: UIView!{
        didSet{self.backgroundImage.layer.cornerRadius = 10}
    }
    @IBOutlet weak var lblClificaJuego: UILabel!{
        didSet{self.lblClificaJuego.layer.cornerRadius = 10}
    }
    @IBOutlet weak var starImage: UIImageView!
    @IBOutlet weak var btnAddVideoGame: UIButton!{
        didSet{self.btnAddVideoGame.layer.cornerRadius = 10}
    }
    @IBOutlet weak var starCalificationTxt: UITextField!
    
    
    var arrayConsolas : [String] = ["Play Station","Play Station 2","Play Station 3","Play Station 4", "Play Station 5", "PSP", "NES", "Game Boy", "Game Boy", "Super Nintendo", "Nintendo 64", "Game Boy Color", "GameCube", "Game Boy Advance", " Nintendo DS", "Wii", "Nintendo 3DS", " Wii U", "Nintendo Switch", "Nintendo Switch Lite", "Nintendo Switch OLED", "Xbox", "Xbox 360", "Xbox360 S", "Xbox360 E", "Xbox One", "Xbox Series X", "Xbox Series S"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpPicker()

    }
    

    
    func setUpPicker() {
        self.chosePlataform.dataSource = self
        self.chosePlataform.delegate = self
    }

    
    
    @IBAction func btnAddVideoGame(_ sender: Any) {
       
        let pushView = ListViewController()
        pushView.recibeDatos = addVGTitletxt.text ?? ""
        navigationController?.pushViewController(pushView, animated: true)
        
    }
    
  

}

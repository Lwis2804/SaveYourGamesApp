//
//  ListCellTableViewCell.swift
//  StockVideoGameApp
//
//  Created by LUIS GONZALEZ on 07/09/23.
//

import UIKit

class ListCellTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var backgorundImage: UIView!{
        didSet{self.backgorundImage.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var cellImage: UIImageView!{
        didSet{self.cellImage.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var lblTitleGame: UILabel!{
        didSet{self.lblTitleGame.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var lblConsola: UILabel!{
        didSet{self.lblConsola.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var lblEstatus: UILabel!{
        didSet{self.lblEstatus.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var numberStarsImage: UIImageView!{
        didSet{self.backgorundImage.layer.cornerRadius = 10
        }
    }
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}

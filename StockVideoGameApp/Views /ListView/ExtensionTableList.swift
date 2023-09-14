
import UIKit


extension ListViewController : UITableViewDelegate & UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return videoGameConsol?.description
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayConsolsTypes.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoGameConsol?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let saveCell = tableView.dequeueReusableCell(withIdentifier: ListCellTableViewCell.identifier, for: indexPath) as? ListCellTableViewCell ?? ListCellTableViewCell()
        saveCell.lblTitleGame.text = videoGameName
        saveCell.lblConsola.text = videoGameConsol
        saveCell.lblEstatus.text = videoGameStatus
        if videoGameRate == "1" {
            saveCell.numberStarsImage.image = UIImage(named: "oneStar")
        }else if videoGameRate == "2" {
            saveCell.numberStarsImage.image = UIImage(named: "twoStars")
        }else if videoGameRate == "3" {
            saveCell.numberStarsImage.image = UIImage(named: "threeStars")
        }else if videoGameRate == "4" {
            saveCell.numberStarsImage.image = UIImage(named: "fourStars")
        }else if videoGameRate == "5" {
            saveCell.numberStarsImage.image = UIImage(named: "fiveStars")
        }
        return saveCell
    }
}


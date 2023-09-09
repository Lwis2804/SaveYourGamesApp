
import UIKit


extension ListViewController : UITableViewDelegate & UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let saveCell = tableView.dequeueReusableCell(withIdentifier: ListCellTableViewCell.identifier, for: indexPath) as? ListCellTableViewCell ?? ListCellTableViewCell()
        saveCell.lblTitleGame.text = videoGameName
        saveCell.lblConsola.text = videoGameConsol
        saveCell.lblEstatus.text = videoGameStatus
        return saveCell
    }
}

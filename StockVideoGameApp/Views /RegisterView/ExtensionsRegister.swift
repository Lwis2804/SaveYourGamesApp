
import UIKit

extension RegisterViewController: UIPickerViewDelegate & UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 12 {
            return arrayConsolas.count
        }else{
            return arrayStatus.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 12 {
            return arrayConsolas[row]
        }else{
            return arrayStatus[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 12 {
    let seleccionConsola = arrayConsolas[row]
    choseConsol = seleccionConsola
        }else if pickerView.tag == 34{
            let seleccionEstatus = arrayStatus[row]
            choseConsol = seleccionEstatus
        }
    }
}

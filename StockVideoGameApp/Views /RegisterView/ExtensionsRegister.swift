
import UIKit

extension RegisterViewController: UIPickerViewDelegate & UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
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
}

//
//  NewPlaceViewController.swift
//  AppTableView
//
//  Created by Oleh Dovhan on 10.04.2021.
//

import UIKit

class NewPlaceViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        tableView.tableFooterView = UIView()
    }

   // Mark:  Table View Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            
        } else {
            view.endEditing(true)
        }
    
    
    

}
}


// Mark: Text field delegate
extension NewPlaceViewController: UITextFieldDelegate {
    
    // Cкрываем клавиатуру по нажатию на done
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    

}

//
//  MainViewController.swift
//  AppTableView
//
//  Created by Oleh Dovhan on 08.04.2021.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restarauntNames = ["Kitaika", "Saperavi", "Queen", "McDonalds", "KFC", "ArtCoffee", "The Burger", "MisterCat", "Evrasia", "Hookah Bar", "Fifty"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return restarauntNames.count
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = restarauntNames[indexPath.row]

        return cell
    }
    

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  MainViewController.swift
//  AppTableView
//
//  Created by Oleh Dovhan on 08.04.2021.
//

import UIKit

class MainViewController: UITableViewController {
    


    let place = Place.getPlaces()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return place.count
    }
    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        

        cell.nameLabel.text = place[indexPath.row].name
        cell.locationLabel.text = place[indexPath.row].location
        cell.typeLabel.text = place[indexPath.row].type
    
        cell.imageOfPlace.image = UIImage(named: place[indexPath.row].image)
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace.clipsToBounds = true

        return cell
    }
    
    // MARK: - Table view delegate
    
  
    @IBAction func cancelAction(_ segue: UIStoryboardSegue)  {}
    
    
}

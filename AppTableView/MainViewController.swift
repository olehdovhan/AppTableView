//
//  MainViewController.swift
//  AppTableView
//
//  Created by Oleh Dovhan on 08.04.2021.
//

import UIKit

class MainViewController: UITableViewController {
    var place = Place.getPlaces()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return place.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        let places = place[indexPath.row]
        cell.nameLabel.text = places.name
        cell.locationLabel.text = places.location
        cell.typeLabel.text = places.type
        if places.image == nil {
            cell.imageOfPlace.image = UIImage(named: places.restaurantImage!)
        } else {
            cell.imageOfPlace.image = places.image
        }
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace.clipsToBounds = true
        return cell
    }
    // MARK: - Table view delegate
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue)  {
        guard let newPlaceVC = segue.source as? NewPlaceViewController else { return }
        newPlaceVC.saveNewPlace()
        place.append(newPlaceVC.newPlace!) 
        tableView.reloadData()
    }
}

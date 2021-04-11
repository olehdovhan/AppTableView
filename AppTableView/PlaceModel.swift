//
//  PlaceModel.swift
//  AppTableView
//
//  Created by Oleh Dovhan on 10.04.2021.
//

import RealmSwift

class Place: Object {
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
   
    
}

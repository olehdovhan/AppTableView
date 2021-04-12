//
//  StorageManager.swift
//  AppTableView
//
//  Created by Oleh Dovhan on 11.04.2021.
//

import RealmSwift


let realm = try! Realm () // Создаю обьект базы данных

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
            print("realm")
            
        }
        }
    static func deleteObject(_ place: Place) {
        
        try! realm.write {
            realm.delete(place)
        }
    }
    
}

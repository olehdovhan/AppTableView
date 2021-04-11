//
//  PlaceModel.swift
//  AppTableView
//
//  Created by Oleh Dovhan on 10.04.2021.
//

import UIKit

struct Place {
    var name: String
    var location: String?
    var type: String?
    var image: UIImage?
    var restaurantImage: String?
    static let restaurantNames = ["Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
                                  "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
                                  "Speak Easy", "Morris Pub", "Вкусные истории",
                                  "Классик", "Love&Life", "Шок", "Бочка"
    ]
    static func getPlaces() -> [Place]  { 
        var places = [Place]()
        for place in restaurantNames {
            places.append(Place(name: place, location: "Киев", type: "Ресторан", image: nil, restaurantImage: place))
        }
        return places // воз
    }
}

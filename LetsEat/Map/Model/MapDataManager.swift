//
//  MapDataManager.swift
//  LetsEat
//
//  Created by Mehmet Deniz Cengiz on 5/27/22.
//

import Foundation

class MapDataManager: DataManager {
    private var items: [RestaurantItem] = []
    
    var annotations: [RestaurantItem] {
        items
    }
    
    func fetch(completion: (_ annotations: [RestaurantItem]) -> ()) {
        if !items.isEmpty {
            items.removeAll()
        }
        
        for data in loadPlist(file: "MapLocations") {
            items.append(RestaurantItem(dict: data))
        }
        
        completion(items)
    }
}

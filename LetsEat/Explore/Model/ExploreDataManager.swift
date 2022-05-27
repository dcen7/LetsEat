//
//  ExploreDataManager.swift
//  LetsEat
//
//  Created by Mehmet Deniz Cengiz on 4/28/22.
//

import Foundation

class ExploreDataManager: DataManager {
    
    private var exploreItems: [ExploreItem] = []
    
    func fetch() {
        for data in loadPlist(file: "ExploreData") {
            exploreItems.append(ExploreItem(dict: data as! [String: String]))
        }
    }
 
    func exploreItem(at index: Int) -> ExploreItem {
        exploreItems[index]
    }
    
    func numberOfExploreItems() -> Int {
        exploreItems.count
    }
}

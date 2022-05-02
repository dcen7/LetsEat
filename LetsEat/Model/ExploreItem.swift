//
//  ExploreItem.swift
//  LetsEat
//
//  Created by Mehmet Deniz Cengiz on 4/28/22.
//

import Foundation

struct ExploreItem {
    let name: String?
    let image: String?
}

extension ExploreItem {
    init(dict: [String : String]) {
        self.name = dict["name"]
        self.image = dict["image"]
    }
}

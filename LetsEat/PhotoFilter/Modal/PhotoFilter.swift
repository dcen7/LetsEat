//
//  PhotoFilter.swift
//  LetsEat
//
//  Created by Mehmet Deniz Cengiz on 6/23/22.
//

import Foundation

struct FilterItem {
    var filter: String?
    var name: String?
}

extension FilterItem {
    init(dict: [String : String]) {
        self.filter = dict["filter"]
        self.name = dict["name"]
    }
}

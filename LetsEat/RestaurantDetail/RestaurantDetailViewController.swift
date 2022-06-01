//
//  RestaurantDetailViewController.swift
//  LetsEat
//
//  Created by Mehmet Deniz Cengiz on 6/1/22.
//

import UIKit

class RestaurantDetailViewController: UITableViewController {
    
    var selectedRestaurant: RestaurantItem?

    override func viewDidLoad() {
        super.viewDidLoad()

        dump(selectedRestaurant as Any)
    }

   

}

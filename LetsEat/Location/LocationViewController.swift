//
//  LocationViewController.swift
//  LetsEat
//
//  Created by Mehmet Deniz Cengiz on 5/3/22.
//

import UIKit

class LocationViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    let manager = LocationDataManager()
    
    var selectedCity: LocationItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialize()
    }
}

//MARK: Private extension
extension LocationViewController {
    func initialize() {
        manager.fetch()
    }
}

//MARK: UITableViewDataSource
extension LocationViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        manager.numberOfLocationItems()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "locationCell", for: indexPath)
        let location = manager.locationItem(at: indexPath.row)
        cell.textLabel?.text = location.cityAndState
        return cell
    }
}

//MARK: UITableViewDelegate
extension LocationViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            cell.accessoryType = .checkmark
            selectedCity = manager.locationItem(at: indexPath.row)
        }
    }
}

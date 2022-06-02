//
//  LocationViewController.swift
//  LetsEat
//
//  Created by Mehmet Deniz Cengiz on 5/3/22.
//

import UIKit

class LocationViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    let manager = LocationDataManager()
    
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
        cell.textLabel?.text = manager.locationItem(at: indexPath.row)
        return cell
    }
}

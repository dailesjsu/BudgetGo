//
//  DestinationViewController.swift
//  BudgetGo
//
//  Created by Dai Le on 5/10/20.
//  Copyright © 2020 daile14011997@gmail.com. All rights reserved.
//

import UIKit

class DestinationViewController: UIViewController{
     let PlacesNameArr = ["Afghanistan, Uber: $5. Lyft:$10", "Albania, Uber: $4, Lyft: $3", "Banh Mi Oven,$5 Uber, $7 Lyft","Pho , Uber: $10.65, Lyft: $7.65", "Cheese Cake Factort, Uber: $95.54, Lyft: $15.87","SJSU, Uber: $5. Lyft:$10", "SFO, Uber: $4, Lyft: $3", "Mexico restaurant,$5 Uber, $7 Lyft","Walmart , Uber: $10.65, Lyft: $7.65", "Target, Uber: $95.54, Lyft: $15.87", "Library, Uber: $5. Lyft:$10", "Silver Lake, Uber: $4, Lyft: $3", "Evergreen Valley College,$5 Uber, $7 Lyft","BBQ hot pot , Uber: $10.65, Lyft: $7.65", "San Jose AirPort, Uber: $95.54, Lyft: $15.87","Taco  Bell, Uber: $5. Lyft:$10", "Jamba Juice, Uber: $4, Lyft: $3", "StarBuck,$5 Uber, $7 Lyft","Pho , Uber: $10.65, Lyft: $7.65", "LA Sanwiches, Uber: $95.54, Lyft: $15.87","Hash Table, Uber: $5. Lyft:$10", "Mission College, Uber: $4, Lyft: $3", "Indian food,$5 Uber, $7 Lyft","Pho , Uber: $10.65, Lyft: $7.65", "MeetFresh, Uber: $95.54, Lyft: $15.87"]
    
    var searchedPlace = [String]()
    var searching = false
    
    @IBOutlet weak var search: UISearchBar!
    
    @IBOutlet weak var tbView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        search.delegate = self

        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


extension DestinationViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
            return searchedPlace.count
        } else {
            return PlacesNameArr.count
            
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if searching {
            cell?.textLabel?.text = searchedPlace[indexPath.row]
        } else {
            cell?.textLabel?.text = PlacesNameArr[indexPath.row]
        }
        return cell!
    }
    
    
}
extension DestinationViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchedPlace = PlacesNameArr.filter({$0.lowercased().prefix(searchText.count) == searchText.lowercased()})
        searching = true
        tbView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        searchBar.text = ""
        tbView.reloadData()
    }
    
}

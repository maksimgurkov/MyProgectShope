//
//  ManuscriptDoorsTableViewController.swift
//  MyProgectShope
//
//  Created by Максим Гурков on 24.05.2022.
//

import UIKit

class ManuscriptDoorsTableViewController: UITableViewController {
    
    var doors: [Door]!
    
    private var filtrateDoors: [Door] = []
    
    private var searchBarIsEmpty: Bool {
        guard let text = searchController.searchBar.text else { return false }
        return text.isEmpty
    }
    private var isFiltering: Bool {
        return searchController.isActive && !searchBarIsEmpty
    }
    
    let searchController = UISearchController(searchResultsController: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Введите модель двери"
        navigationItem.searchController = searchController
        definesPresentationContext = true
        
        title = "Каталог материалов"

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering {
           return filtrateDoors.count
        }
        return doors.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellManuscript", for: indexPath)
        var content = cell.defaultContentConfiguration()
        var door: Door
        
        if isFiltering {
            door = filtrateDoors[indexPath.row]
        } else {
            door = doors[indexPath.row]
        }
        
        content.text = door.nameDoor
        content.image = UIImage(named: door.nameDoor)
        content.imageProperties.maximumSize.height = 70
        content.imageProperties.maximumSize.width = 50
        cell.contentConfiguration = content

        return cell
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let index = tableView.indexPathForSelectedRow {
            let infoDooeVC = segue.destination as! InfoDoorViewController
            infoDooeVC.door = doors[index.row]
        }
    }
}

extension ManuscriptDoorsTableViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
    
    private func filterContentForSearchText(_ searchText: String) {
        filtrateDoors = doors.filter({ (door: Door) in
            return door.nameDoor.lowercased().contains(searchText.lowercased())
        })
        tableView.reloadData()
    }
    
    
}

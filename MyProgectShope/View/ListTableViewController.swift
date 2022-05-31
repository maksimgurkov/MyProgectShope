//
//  ListTableViewController.swift
//  MyProgectShope
//
//  Created by Максим Гурков on 23.05.2022.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    var doors: [Door]!
    
    private var cat: [String] = []
    private var listDoors: [Door] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarController?.navigationItem.title = "Выбор фабрики"
        categories()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.navigationItem.title = "Выбор фабрики"
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cat.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let door = cat[indexPath.row]
        content.text = door
        content.image = UIImage(named: door)
        content.imageProperties.maximumSize.width = 60
        content.imageProperties.maximumSize.height = 40
        
        cell.contentConfiguration = content
        return cell
    }
    
    private func categories() {
        for door in doors {
            if !cat.contains(door.factory.rawValue) {
                cat.append(door.factory.rawValue)
            }
        }
    }
    
    private func getListDoors() {
        guard let index = tableView.indexPathForSelectedRow else { return }
        listDoors = []
        for door in doors {
            if door.factory.rawValue == cat[index.row] {
                listDoors.append(door)
            }
        }
    }
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let listDoorVC = segue.destination as? ListOfDoorsTableViewController else { return }
        getListDoors()
        listDoorVC.doorsList = listDoors
        
    }

}

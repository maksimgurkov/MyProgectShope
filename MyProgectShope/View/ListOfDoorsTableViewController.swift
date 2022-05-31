//
//  ListOfDoorsTableViewController.swift
//  MyProgectShope
//
//  Created by Максим Гурков on 24.05.2022.
//

import UIKit

class ListOfDoorsTableViewController: UITableViewController {
    
    var doorsList: [Door]!
    private var doorMaterial: [String] = []
    private var manuscriptDoor: [Door] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Выбор покрытия."
        foMaterialDoors()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return doorMaterial.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellDoor", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let door = doorMaterial[indexPath.row]
        content.text = door
        
        cell.contentConfiguration = content

        return cell
    }
    
    private func foMaterialDoors() {
        for door in doorsList {
            if !doorMaterial.contains(door.material.rawValue) {
                doorMaterial.append(door.material.rawValue)
            }
        }
    }
    
    private func foManuscriptDoors() {
        guard let index = tableView.indexPathForSelectedRow else { return }
        manuscriptDoor = []
        for door in doorsList {
            if door.material.rawValue == doorMaterial[index.row] {
                manuscriptDoor.append(door)
            }
        }
    }
    


    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let manuscriptVC = segue.destination as? ManuscriptDoorsTableViewController else { return }
        foManuscriptDoors()
        manuscriptVC.doors = manuscriptDoor

    }
    

}

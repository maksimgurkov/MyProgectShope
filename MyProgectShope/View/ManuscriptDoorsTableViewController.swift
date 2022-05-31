//
//  ManuscriptDoorsTableViewController.swift
//  MyProgectShope
//
//  Created by Максим Гурков on 24.05.2022.
//

import UIKit

class ManuscriptDoorsTableViewController: UITableViewController {
    
    var doors: [Door]!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Каталог материалов"

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return doors.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellManuscript", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let door = doors[indexPath.row]
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

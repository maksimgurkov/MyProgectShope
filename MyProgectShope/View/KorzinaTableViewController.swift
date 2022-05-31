//
//  KorzinaTableViewController.swift
//  MyProgectShope
//
//  Created by Максим Гурков on 23.05.2022.
//

import UIKit

class KorzinaTableViewController: UITableViewController {
    
    var doors: [Door]!
    
    private var hopingList: [Door] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.navigationItem.title = "Корзина"
        filterHopingList()
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hopingList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let door = hopingList[indexPath.row]
        content.text = door.nameDoor
        content.secondaryText = "\(door.count550Door)"
        cell.contentConfiguration = content

        return cell
    }
    
    private func filterHopingList() {
        hopingList = []
        for door in doors {
            if door.flag {
                hopingList.append(door)
            }
        }
    }
    
    
    // MARK: - Navigation

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    }

}

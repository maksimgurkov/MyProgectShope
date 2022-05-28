//
//  StartTapBarController.swift
//  MyProgectShope
//
//  Created by Максим Гурков on 23.05.2022.
//

import UIKit

class StartTapBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transferDoors()
        

    }
    
    private func transferDoors() {
        let doors = Door.forDoors()
        let listVC = viewControllers?[1] as! ListTableViewController
        let karzinaVC = viewControllers?[2] as! KorzinaTableViewController
        
        listVC.doors = doors
        karzinaVC.doors = doors
    }
        
}

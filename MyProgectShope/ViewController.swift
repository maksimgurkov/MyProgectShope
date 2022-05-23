//
//  ViewController.swift
//  MyProgectShope
//
//  Created by Максим Гурков on 23.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var viewInfo: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        viewInfo.layer.cornerRadius = 10
    }


}


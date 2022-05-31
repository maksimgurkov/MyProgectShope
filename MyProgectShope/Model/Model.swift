//
//  Model.swift
//  MyProgectShope
//
//  Created by Максим Гурков on 24.05.2022.
//

import Foundation


class Door {
    let factory: Factory
    let material: Material
    let nameDoor: String
    let description: String
    let price: String
    var flag = false
    var count550Door = 0
    
    static func forDoors() -> [Door] {
        let door = DataManager.shared.doors
        return door
    }
    
    init(factory: Factory, material: Material, nameDoor: String, description: String, price: String) {
        self.factory = factory
        self.material = material
        self.nameDoor = nameDoor
        self.description = description
        self.price = price
    }
    
    
}

enum Material: String {
    case shpone = "Шпон"
    case ecoShpone = "ЭкоШпон"
    case emal = "Эмаль"
}

enum Factory: String {
    case luxor = "Luxor"
    case onyx = "Оникс"
    case sodrugestvo = "Содружество"
    case holl = "Хол"
}

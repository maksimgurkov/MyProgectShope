//
//  Model.swift
//  MyProgectShope
//
//  Created by Максим Гурков on 24.05.2022.
//

import Foundation


struct Door {
    let factory: Factory
    let material: Material
    let nameDoor: String
    let description: String
    var flag = false
    
    static func forDoors() -> [Door] {
        let door = DataManager.shared.doors
        return door
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

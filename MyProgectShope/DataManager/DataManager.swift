//
//  DataManager.swift
//  MyProgectShope
//
//  Created by Максим Гурков on 24.05.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let doors = [
        Door(factory: .luxor,
             material: .ecoShpone,
             nameDoor: "Lu-21",
             description: "Описание"),
        Door(factory: .luxor,
             material: .ecoShpone,
             nameDoor: "Lu-22",
             description: "Описание"),
        Door(factory: .luxor,
             material: .ecoShpone,
             nameDoor: "Lu-23",
             description: "Описание"),
        Door(factory: .luxor,
             material: .shpone,
             nameDoor: "Турин",
             description: "Описание"),
        Door(factory: .luxor,
             material: .emal,
             nameDoor: "Laura",
             description: "Описание"),
        Door(factory: .onyx,
             material: .ecoShpone,
             nameDoor: "Lu-21",
             description: "Описание"),
        Door(factory: .onyx,
             material: .ecoShpone,
             nameDoor: "Lu-21",
             description: "Описание"),
        Door(factory: .onyx,
             material: .ecoShpone,
             nameDoor: "Lu-21",
             description: "Описание"),
        Door(factory: .onyx,
             material: .ecoShpone,
             nameDoor: "Lu-21",
             description: "Описание"),
        Door(factory: .sodrugestvo,
             material: .ecoShpone,
             nameDoor: "Lu-21",
             description: "Описание"),
        Door(factory: .sodrugestvo,
             material: .ecoShpone,
             nameDoor: "Lu-21",
             description: "Описание"),
        Door(factory: .sodrugestvo,
             material: .ecoShpone,
             nameDoor: "Lu-21",
             description: "Описание"),
        Door(factory: .sodrugestvo,
             material: .ecoShpone,
             nameDoor: "Lu-21",
             description: "Описание"),
        Door(factory: .sodrugestvo,
             material: .ecoShpone,
             nameDoor: "Lu-21",
             description: "Описание"),
        Door(factory: .holl,
             material: .ecoShpone,
             nameDoor: "Lu-21",
             description: "Описание"),
        Door(factory: .holl,
             material: .ecoShpone,
             nameDoor: "Lu-21",
             description: "Описание"),
        Door(factory: .holl,
             material: .emal,
             nameDoor: "Lu-21",
             description: "Описание"),
        Door(factory: .holl,
             material: .shpone,
             nameDoor: "Lu-21",
             description: "Описание"),
    ]
    
    private init() {}
    
}

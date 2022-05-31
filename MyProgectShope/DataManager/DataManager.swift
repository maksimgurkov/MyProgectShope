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
             nameDoor: "Lu-21 Капучино",
             description: "Экошпон это многослойное декоративное покрытие с эффектом натурального шпона. Структура материала с актуальным трехмерным оптическим эффектом в точности передает все особенности структуры древесины.",
        price: "8160 руб."),
        Door(factory: .luxor,
             material: .ecoShpone,
             nameDoor: "Lu-21 Венге",
             description: "Экошпон это многослойное декоративное покрытие с эффектом натурального шпона. Структура материала с актуальным трехмерным оптическим эффектом в точности передает все особенности структуры древесины.",
             price: "8160 руб."),
        Door(factory: .luxor,
             material: .ecoShpone,
             nameDoor: "Lu-21 Серая",
             description: "Экошпон это многослойное декоративное покрытие с эффектом натурального шпона. Структура материала с актуальным трехмерным оптическим эффектом в точности передает все особенности структуры древесины.",
             price: "8160 руб."),
        Door(factory: .luxor,
             material: .ecoShpone,
             nameDoor: "Lu-21 Беленый дуб",
             description: "Экошпон это многослойное декоративное покрытие с эффектом натурального шпона. Структура материала с актуальным трехмерным оптическим эффектом в точности передает все особенности структуры древесины.",
             price: "8160 руб."),
        Door(factory: .luxor,
             material: .ecoShpone,
             nameDoor: "Lu-21 Темный орех",
             description: "Экошпон это многослойное декоративное покрытие с эффектом натурального шпона. Структура материала с актуальным трехмерным оптическим эффектом в точности передает все особенности структуры древесины.",
             price: "8160 руб."),
        Door(factory: .luxor,
             material: .shpone,
             nameDoor: "Турин",
             description: "Описание",
             price: "8160 руб."),
        Door(factory: .luxor,
             material: .emal,
             nameDoor: "Laura",
             description: "Описание",
             price: "8160 руб."),
        Door(factory: .onyx,
             material: .ecoShpone,
             nameDoor: "Lu-21",
             description: "Описание",
             price: "8160 руб."),
        Door(factory: .onyx,
             material: .ecoShpone,
             nameDoor: "Lu-21",
             description: "Описание",
             price: "8160 руб."),
        Door(factory: .onyx,
             material: .ecoShpone,
             nameDoor: "Lu-21",
             description: "Описание",
             price: "8160 руб."),
        Door(factory: .onyx,
             material: .ecoShpone,
             nameDoor: "Lu-21",
             description: "Описание",
             price: "8160 руб."),
        Door(factory: .sodrugestvo,
             material: .ecoShpone,
             nameDoor: "Lu-21",
             description: "Описание",
             price: "8160 руб."),
        Door(factory: .sodrugestvo,
             material: .ecoShpone,
             nameDoor: "Lu-21",
             description: "Описание",
             price: "8160 руб."),
        Door(factory: .sodrugestvo,
             material: .ecoShpone,
             nameDoor: "Lu-21",
             description: "Описание",
             price: "8160 руб."),
        Door(factory: .sodrugestvo,
             material: .ecoShpone,
             nameDoor: "Lu-21",
             description: "Описание",
             price: "8160 руб."),
        Door(factory: .sodrugestvo,
             material: .ecoShpone,
             nameDoor: "Lu-21",
             description: "Описание",
             price: "8160 руб."),
        Door(factory: .holl,
             material: .ecoShpone,
             nameDoor: "Lu-21",
             description: "Описание",
             price: "8160 руб."),
        Door(factory: .holl,
             material: .ecoShpone,
             nameDoor: "Lu-21",
             description: "Описание",
             price: "8160 руб."),
        Door(factory: .holl,
             material: .emal,
             nameDoor: "Lu-21",
             description: "Описание",
             price: "8160 руб."),
        Door(factory: .holl,
             material: .shpone,
             nameDoor: "Lu-21",
             description: "Описание",
             price: "8160 руб."),
    ]
    
    private init() {}
    
}

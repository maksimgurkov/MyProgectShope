//
//  Person.swift
//  MyProgectShope
//
//  Created by Максим Гурков on 01.06.2022.
//

import Foundation

class Person {
    var name: String
    var surName: String
    var phone: Int
    var liveDoor: [Door]?
    var myHopingList: [Door]?
    var liveFlag = false
    
    var fulName: String {
        "\(name) \(surName)"
    }
    
    
    init(name: String, surName: String, phone: Int, liveDoor: [Door], myHopingList: [Door]) {
        self.name = name
        self.surName = surName
        self.phone = phone
        self.liveDoor = liveDoor
        self.myHopingList = myHopingList
    }
}



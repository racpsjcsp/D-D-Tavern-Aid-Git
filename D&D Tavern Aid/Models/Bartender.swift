//
//  Bartender.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 13/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

struct Bartender: Codable {
    let genders: [Gender]
    let race: String!
    
    
    
    init(genders: [Gender], race: String) {
        self.genders = genders
        self.race = race
    }
}

struct Gender: Codable {
    let gender: String!
    let names: [String]
    
    init(gender: String, names: [String]) {
        self.gender = gender
        self.names = names
    }
}

struct Class_:Codable {
    let _class: String
    
    init(_class: String) {
        self._class = _class
    }
    
}



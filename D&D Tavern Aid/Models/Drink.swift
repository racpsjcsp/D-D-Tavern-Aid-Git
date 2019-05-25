//
//  Drinks.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 10/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

class Drink: Codable {
    let cheapDrinks: [String]
    let ale: [String]
    let wine: [String]
    let fineWine: [String]
    let otherDrinks: [String]
    let underdarkDrinks: [String]
    let planarDrinks: [String]
    let nonAlcoholicDrinks: [String]
    let magicDrinks: [String]
    
    init(cheapDrinks: [String], ale: [String], wine: [String], fineWine: [String], otherDrinks: [String], underdarkDrinks: [String], planarDrinks: [String], nonAlcoholicDrinks: [String], magicDrinks: [String]) {
        self.cheapDrinks = cheapDrinks
        self.ale = ale
        self.wine = wine
        self.fineWine = fineWine
        self.otherDrinks = otherDrinks
        self.underdarkDrinks = underdarkDrinks
        self.planarDrinks = planarDrinks
        self.nonAlcoholicDrinks = nonAlcoholicDrinks
        self.magicDrinks = magicDrinks
    }
}

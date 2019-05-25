//
//  Food.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 10/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

class Foods: Codable {
    let vegetables: [String]
    let fruits: [String]
    let soups: [String]
    let meats: [String]
    let trailFood: [String]
    let desserts: [String]
    let planarFood: [String]
    let magicFood: [String]
    
    init (vegetables: [String], fruits: [String], soups: [String], meats: [String], trailFood: [String], desserts: [String], planarFood: [String], magicFood: [String]) {
        self.vegetables = vegetables
        self.fruits = fruits
        self.soups = soups
        self.meats = meats
        self.trailFood = trailFood
        self.desserts = desserts
        self.planarFood = planarFood
        self.magicFood = magicFood
    }
}

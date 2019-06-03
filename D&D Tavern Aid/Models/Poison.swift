//
//  Poison.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 03/06/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

struct Poison: Codable {
    
    let roll: String
    let name: String
    let type: String
    let ingredients_facts: String
    let effect: String
    let price: String
    let author: String
    
}

//
//  Npc.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 03/06/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

struct Npc: Codable {
    
    let roll: String
    let name: String
    let race: String
    let profession_class: String
    let alignment: String
    let description: String
    let plot: String
    let items: String
    let stats: String
    let author: String
}

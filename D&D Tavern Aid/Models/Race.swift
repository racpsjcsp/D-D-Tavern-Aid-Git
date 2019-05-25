//
//  Race.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 13/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

class Race: Codable {
    var race: String
    
    init(race: String) {
        self.race = race
    }
}

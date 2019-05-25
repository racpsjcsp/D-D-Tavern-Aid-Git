//
//  NPCLevel.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 14/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

class NPCLevel {
    var randomLevel = Int.random(in: 1...10)
    
    init(randomLevel: Int) {
        self.randomLevel = randomLevel
    }
}

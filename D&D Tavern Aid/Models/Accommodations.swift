//
//  Accommodations.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 10/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

struct Accommodations: Codable {
    
    let accommodation: String
    
    init(accommodation: String) {
        self.accommodation = accommodation
    }
}

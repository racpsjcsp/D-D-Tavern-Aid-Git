//
//  Rumor.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 10/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

struct Rumor: Codable { //Encodable, Decodable
    let rumor: String
    
    init(rumor: String) {
        self.rumor = rumor
    }
}

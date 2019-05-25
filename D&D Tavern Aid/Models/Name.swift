//
//  Name.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 12/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

struct Name: Codable { //Encodable, Decodable
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

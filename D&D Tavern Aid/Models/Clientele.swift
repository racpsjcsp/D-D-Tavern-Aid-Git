//
//  Clientele.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 17/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

struct Clientele: Codable { //Encodable, Decodable
    let clientele: String
    
    init(clientele: String) {
        self.clientele = clientele
    }
}

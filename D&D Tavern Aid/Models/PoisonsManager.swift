//
//  PoisonsManager.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 03/06/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

class PoisonsManager {
    let poisons: [Poison]
    
    init() {
        
        let fileURLPoison = Bundle.main.url(forResource: "100poisons", withExtension: "json")!
        let jsonDataPoison = try! Data(contentsOf: fileURLPoison)
        let jsonDecoderPoison = JSONDecoder()
        poisons = try! jsonDecoderPoison.decode([Poison].self, from: jsonDataPoison)
    }
    
    //function to get random poison
    func getRandomCurse() -> Poison {
        let poison = poisons.randomElement()!
        return poison
    }
    
}

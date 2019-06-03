//
//  NpcsManager.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 31/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

class NpcsManager {
    let npcs: [Npc]
    
    init() {
        
        let fileURLNpc = Bundle.main.url(forResource: "100npc", withExtension: "json")!
        let jsonDataNpc = try! Data(contentsOf: fileURLNpc)
        let jsonDecoderNpc = JSONDecoder()
        npcs = try! jsonDecoderNpc.decode([Npc].self, from: jsonDataNpc)
    }
    
    //function to get random curse
    func getRandomCurse() -> Npc {
        let npc = npcs.randomElement()!
        return npc
    }
    
}

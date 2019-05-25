//
//  Quest.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 21/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

class Quest: Codable {
    
    var quest: [String]
    var creature: [String]
    var condition: [String]
    var setting: [String]
    var dungeon: [String]
    
    init(quest: [String], creature: [String], condition: [String], setting: [String], dungeon: [String]) {
        self.quest = quest
        self.creature = creature
        self.condition = condition
        self.setting = setting
        self.dungeon = dungeon
    }
}

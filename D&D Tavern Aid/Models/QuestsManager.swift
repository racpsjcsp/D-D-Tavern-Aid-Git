//
//  QuestManager.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 21/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

class QuestsManager: Codable {
    
    var quests: [String]
    var creatures: [String]
    var conditions: [String]
    var settings: [String]
    var dungeons: [String]
    
    init() {
        
        quests = ["disrupt the ritual of","capture the relic from","steal the treasure from",
                  "kill all","negotiate passage with","recover hostages from","drive out"]
        creatures = ["demons","devils","cultists","fey","undead","goblins","hobgoblins","orcs",
                     "lizardfolk","mind flayers","beholder(s)"]
        conditions = ["ruined","flooded","collapsed","fortified","occupied","flying","floating",
                      "sunken","buried","hidden","veiled"]
        settings = ["in the ancient forest","atop ocean cliffs","in the fetid swamp",
                    "on the misty moor","in rocky hill country","on the mountainside",
                    "in the deep jungle","on the frozen tundra","in the labyrinthine cavern",
                    "on the wide savanna","in the winding canyon"]
        dungeons = ["tower","city","palace","temple","keep","shrine","pyramid","ship","tomb",
                    "mansion","vault"]
    }
    
    func getRandomQuest() -> String {
        let quest = quests.randomElement()!
        return quest
    }
    
    func getRandomCreature() -> String {
        let creature = creatures.randomElement()!
        return creature
    }
    
    func getRandomCondition() -> String {
        let condition = conditions.randomElement()!
        return condition
    }
    
    func getRandomSetting() -> String {
        let setting = settings.randomElement()!
        return setting
    }
    
    func getRandomDungeon() -> String {
        let dungeon = dungeons.randomElement()!
        return dungeon
    }
    
    func getChosenQuest() -> String {
        let chosenQuest = "You must \(getRandomQuest()) the \(getRandomCreature()) in the \(getRandomCondition()) \(getRandomDungeon()) \(getRandomSetting())"
        return chosenQuest
    }
    
}


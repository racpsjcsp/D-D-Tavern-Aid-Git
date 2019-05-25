//
//  BartenderManager.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 13/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

class BartenderManager {
    var races: [Bartender]
    var names: [String]
    var genders: [Gender]
    var _classes: [Class_]
    var level: Int
    
    init() {
        
        let fileURLRace = Bundle.main.url(forResource: "test", withExtension: "json")!
        let jsonRaceData = try! Data(contentsOf: fileURLRace)
        let jsonRaceDecoder = JSONDecoder()
        races = try! jsonRaceDecoder.decode([Bartender].self, from: jsonRaceData)

        
        let fileURLClass = Bundle.main.url(forResource: "classes", withExtension: "json")!
        let jsonClassData = try! Data(contentsOf: fileURLClass)
        let jsonClassDecoder = JSONDecoder()
        _classes = try! jsonClassDecoder.decode([Class_].self, from: jsonClassData)
        
        genders = []
        names = []
        level = 0
    }
    
    func getRandomBartenderRace() -> String {
        let race = races.randomElement()!
        genders = race.genders
        return race.race
    }
    
    func getRandomBartenderGender() -> String {
        let gender = genders.randomElement()!
        names = gender.names
        return gender.gender
    }
    
    func getRandomBartenderName() -> String {
        return names.randomElement()!
    }
   
    func getRandomBartenderClasses() -> String {
        return _classes.randomElement()!._class
    }
    
    func getRandomBartenderLevel() -> Int {
        let level = Int.random(in: 1...10)
        return level
    }
    
//    func loadDataFromURL(url: String, completion: @escaping (String?)->()){
//
//        REST.loadBartenderData(url:url, onComplete: { (names) in
//            self.names = names
//            self.races = races
//            self._classes = _classes
//            self.genders = genders
//            self.levels = levels
            
//            DispatchQueue.main.async {
//                completion(nil)
//            }
//
//        }) { (error) in
//            print(error)
//            completion("error")
//        }
    
//    }
}

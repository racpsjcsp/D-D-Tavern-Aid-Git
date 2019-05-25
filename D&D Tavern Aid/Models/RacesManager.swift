//
//  RacesManager.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 13/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

class RacesManager {
    var races: [Race]
    
    init() {
        
        let fileURL = Bundle.main.url(forResource: "races", withExtension: "json")!
        let jsonData = try! Data(contentsOf: fileURL)
        let jsonDecoder = JSONDecoder()
        races = try! jsonDecoder.decode([Race].self, from: jsonData)
        //races = []
    }
    
    var racesList: [Race] {
        return races
    }
    
    //function to get a random index Race list and pick one item from a JSON file
    func getRandomRace() -> String {
        let index = Int(arc4random_uniform(UInt32(races.count)))
        return races[index].race
    }
    
    func loadDataFromURL(url: String, completion: @escaping (String?)->()){
        
        REST.loadRaceData(url:url, onComplete: { (races) in
            self.races = races
            DispatchQueue.main.async {
                completion(nil)
            }
            
        }) { (error) in
            print(error)
            completion("error")
        }
        
    }
}

//
//  TavernNameManager.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 17/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

class TavernNameManager {
    
    var names: [TavernName]
    
    init() {
        
        let fileURL = Bundle.main.url(forResource: "tavernNames", withExtension: "json")!
        let jsonData = try! Data(contentsOf: fileURL)
        let jsonDecoder = JSONDecoder()
        names = try! jsonDecoder.decode([TavernName].self, from: jsonData)
        //names = []  put it somewhere else for the cloud data feature        
    }
    
    var namesList: [TavernName] {
        return names
    }
    
    func getRandomTavernName() -> String {
        let index = Int(arc4random_uniform(UInt32(names.count)))
        return names[index].name
    }
    
    func loadDataFromURL(url: String, completion: @escaping (String?)->()){
        
        REST.loadTavernNameData(url:url, onComplete: { (names) in
            self.names = names
            DispatchQueue.main.async {
                completion(nil)
            }
            
        }) { (error) in
            print(error)
            completion("error")
        }
        
    }
    
}

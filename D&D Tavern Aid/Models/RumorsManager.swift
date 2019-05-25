//
//  Rumors.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 10/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

class RumorsManager {
   
    var rumors: [Rumor]
    
    init() {
        
        let fileURL = Bundle.main.url(forResource: "rumors", withExtension: "json")!
        let jsonData = try! Data(contentsOf: fileURL)
        let jsonDecoder = JSONDecoder()
        rumors = try! jsonDecoder.decode([Rumor].self, from: jsonData)
        //rumors = []   put it somewhere else for the cloud data feature        
    }
    
    var rumorsList: [Rumor] {
        return rumors
    }
    
    func getRandomRumor() -> String {
        let index1 = Int(arc4random_uniform(UInt32(rumors.count)))    
        return rumors[index1].rumor
    }
    
    
    //receive new info from another json sent by the user??
    func loadDataFromURL(url: String, completion: @escaping (String?)->()){
        
        REST.loadRumorData(url:url, onComplete: { (rumors) in
            self.rumors = rumors
            DispatchQueue.main.async {
                completion(nil)
            }
            
        }) { (error) in
            print(error)
            completion("error")
        }
        
    }
   
}





//
//  AccommodationsManager.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 10/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

class AccomodationsManager {
    
    var accommodations: [Accommodations]
    
    init() {
        
        let fileURL = Bundle.main.url(forResource: "accommodations", withExtension: "json")!
        let jsonData = try! Data(contentsOf: fileURL)
        let jsonDecoder = JSONDecoder()
        accommodations = try! jsonDecoder.decode([Accommodations].self, from: jsonData)
        //accommodations = []  put it somewhere else for the cloud data feature
    }
    
    var accommodationList: [Accommodations] {
        return accommodations
    }
    
    func getRandomAccommodation() -> String {
        let index = Int(arc4random_uniform(UInt32(accommodations.count)))
        return accommodations[index].accommodation
    }
    
    func loadDataFromURL(url: String, completion: @escaping (String?)->()){
        
        REST.loadAccommodationData(url:url, onComplete: { (accommodations) in
            self.accommodations = accommodations
            DispatchQueue.main.async {
                completion(nil)
            }
            
        }) { (error) in
            print(error)
            completion("error")
        }
        
    }
    
}

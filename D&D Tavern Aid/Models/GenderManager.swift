//
//  GenderManager.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 18/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

class GenderManager {
    

    var genders: [Gender]

    init() {
        
        let fileURL = Bundle.main.url(forResource: "gender", withExtension: "json")!
        let jsonData = try! Data(contentsOf: fileURL)
        let jsonDecoder = JSONDecoder()
        genders = try! jsonDecoder.decode([Gender].self, from: jsonData)
        
    }

    var gendersList: [Gender] {
        return genders
    }

    func getRandomGender() -> String {
        let index = Int(arc4random_uniform(UInt32(genders.count)))
        return genders[index].gender
    }

    func loadDataFromURL(url: String, completion: @escaping (String?)->()){
        
        REST.loadGenderData(url:url, onComplete: { (genders) in
            self.genders = genders
            DispatchQueue.main.async {
                completion(nil)
            }
            
        }) { (error) in
            print(error)
            completion("error")
        }
        
    }
}

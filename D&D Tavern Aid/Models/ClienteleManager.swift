//
//  ClienteleManager.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 17/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

class ClienteleManager {
    
    var clients: [Clientele]
    
    init() {
        
        let fileURL = Bundle.main.url(forResource: "clientele", withExtension: "json")!
        let jsonData = try! Data(contentsOf: fileURL)
        let jsonDecoder = JSONDecoder()
        clients = try! jsonDecoder.decode([Clientele].self, from: jsonData)
        //clients = []  put it somewhere else for the cloud data feature
    }
    
    var clientsList: [Clientele] {
        return clients
    }
    
    func getRandomClientele() -> String {
        let index = Int(arc4random_uniform(UInt32(clients.count)))
        return clients[index].clientele
    }
    
    func loadDataFromURL(url: String, completion: @escaping (String?)->()){
        
        REST.loadClienteleData(url:url, onComplete: { (clients) in
            self.clients = clients
            DispatchQueue.main.async {
                completion(nil)
            }
            
        }) { (error) in
            print(error)
            completion("error")
        }
        
    }
    
}

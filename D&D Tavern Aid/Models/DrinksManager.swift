//
//  DrinksManager.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 10/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

class DrinksManager {
    var drinks: [Drink]
    
    init() {
        
        let fileURL = Bundle.main.url(forResource: "drinks", withExtension: "json")!
        let jsonData = try! Data(contentsOf: fileURL)
        let jsonDecoder = JSONDecoder()
        drinks = try! jsonDecoder.decode([Drink].self, from: jsonData)
        drinks = []
    }
    
    var drinksList: [Drink] {
        return drinks
    }

    //functions to get random a list of drinks of each type (from a JSON file)
    func getRandomCheapDrink() -> [String] {
        let index = Int(arc4random_uniform(UInt32(drinks.count)))
        return drinks[index].cheapDrinks //tem varios tipos de drinks, preciso arrumar isso.
    }
    
    func getRandomAle() -> [String] {
        let index = Int(arc4random_uniform(UInt32(drinks.count)))
        return drinks[index].ale
    }
    
    func getRandomWine() -> [String] {
        let index = Int(arc4random_uniform(UInt32(drinks.count)))
        return drinks[index].wine
    }
    
    func getRandomFineWine() -> [String] {
        let index = Int(arc4random_uniform(UInt32(drinks.count)))
        return drinks[index].fineWine
    }
    
    func getRandomOtherDrinks() -> [String] {
        let index = Int(arc4random_uniform(UInt32(drinks.count)))
        return drinks[index].otherDrinks
    }
    
    func getRandomUnderdarkDrinks() -> [String] {
        let index = Int(arc4random_uniform(UInt32(drinks.count)))
        return drinks[index].underdarkDrinks
    }
    
    func getRandomPlanarDrinks() -> [String] {
        let index = Int(arc4random_uniform(UInt32(drinks.count)))
        return drinks[index].planarDrinks
    }
    
    func getRandomNonAlcoholicDrinks() -> [String] {
        let index = Int(arc4random_uniform(UInt32(drinks.count)))
        return drinks[index].nonAlcoholicDrinks
    }
    
    func getRandomMagicDrinks() -> [String] {
        let index = Int(arc4random_uniform(UInt32(drinks.count)))
        return drinks[index].magicDrinks
    }
    
    func loadDataFromURL(url: String, completion: @escaping (String?)->()){
        
        REST.loadDrinkData(url:url, onComplete: { (drinks) in
            self.drinks = drinks
            DispatchQueue.main.async {
                completion(nil)
            }
            
        }) { (error) in
            print(error)
            completion("error")
        }
        
    }
}

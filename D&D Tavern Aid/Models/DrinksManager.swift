//
//  DrinksManager.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 10/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

class DrinksManager: Codable {
    let drinks: [Drink]
//    let names: [Drink]
//    let colors: [Drink]
//    let descriptions: [Drink]
//    let effects: [Drink]
//    let prices: [Drink]
    
    init() {
        
        let fileURLSpecialDrink = Bundle.main.url(forResource: "100specialDrinks", withExtension: "json")!
        let jsonDataSpecialDrink = try! Data(contentsOf: fileURLSpecialDrink)
        let jsonDecoderSpecialDrink = JSONDecoder()
        drinks = try! jsonDecoderSpecialDrink.decode([Drink].self, from: jsonDataSpecialDrink)
        
//        names = []
//        colors = []
//        descriptions = []
//        effects = []
//        prices = []
    }
    
    //function to get random drink
    func getRandomDrink() -> Drink {
        let drink = drinks.randomElement()!
        return drink
    }
    
    

    
}

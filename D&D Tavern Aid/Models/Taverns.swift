//
//  Taverns.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 10/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

struct Taverns {
    var tavernName: [String]
    var bartenderName: [String]
    var interestedClientele: [String]
    var rumorsOverheard: [String]
    var accommodations: [String]
    var menu: [String]
    var drinks: [String]
    var specials: [String]
    
    init(tavernName: [String], bartenderName: [String], interestedClientele: [String], rumorsOverheard: [String], accommodations: [String], menu: [String], drinks: [String], specials: [String]) {
        self.tavernName = tavernName
        self.bartenderName = bartenderName
        self.interestedClientele = interestedClientele
        self.rumorsOverheard = rumorsOverheard
        self.accommodations = accommodations
        self.menu = menu
        self.drinks = drinks
        self.specials = specials
    }
}


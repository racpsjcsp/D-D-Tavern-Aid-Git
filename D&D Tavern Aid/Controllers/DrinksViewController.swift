//
//  DrinksViewController.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 25/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import UIKit

class DrinksViewController: UIViewController {

    @IBOutlet weak var btDrinks: UIButton!
    
    @IBOutlet weak var lbDrink1: UILabel!
    @IBOutlet weak var lbColor1: UILabel!
    @IBOutlet weak var lbDescription1: UILabel!
    @IBOutlet weak var lbEffect1: UILabel!
    @IBOutlet weak var lbPrice1: UILabel!
    
    @IBOutlet weak var lbDrink2: UILabel!
    @IBOutlet weak var lbColor2: UILabel!
    @IBOutlet weak var lbDescription2: UILabel!
    @IBOutlet weak var lbEffect2: UILabel!
    @IBOutlet weak var lbPrice2: UILabel!
    
    @IBOutlet weak var lbDrink3: UILabel!
    @IBOutlet weak var lbColor3: UILabel!
    @IBOutlet weak var lbDescription3: UILabel!
    @IBOutlet weak var lbEffect3: UILabel!
    @IBOutlet weak var lbPrice3: UILabel!

    @IBOutlet weak var lbDrink4: UILabel!
    @IBOutlet weak var lbColor4: UILabel!
    @IBOutlet weak var lbDescription4: UILabel!
    @IBOutlet weak var lbEffect4: UILabel!
    @IBOutlet weak var lbPrice4: UILabel!
    
    @IBOutlet weak var lbDrink5: UILabel!
    @IBOutlet weak var lbColor5: UILabel!
    @IBOutlet weak var lbDescription5: UILabel!
    @IBOutlet weak var lbEffect5: UILabel!
    @IBOutlet weak var lbPrice5: UILabel!
    
    let drinkManager = DrinksManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func generateDrinks(_ sender: Any) {
        showRandomDrinks()
       
        lbDrink1.isHidden = false
        lbColor1.isHidden = false
        lbDescription1.isHidden = false
        lbEffect1.isHidden = false
        lbPrice1.isHidden = false
        
        lbDrink2.isHidden = false
        lbColor2.isHidden = false
        lbDescription2.isHidden = false
        lbEffect2.isHidden = false
        lbPrice2.isHidden = false
        
        lbDrink3.isHidden = false
        lbColor3.isHidden = false
        lbDescription3.isHidden = false
        lbEffect3.isHidden = false
        lbPrice3.isHidden = false
        
        lbDrink4.isHidden = false
        lbColor4.isHidden = false
        lbDescription4.isHidden = false
        lbEffect4.isHidden = false
        lbPrice4.isHidden = false
        
        lbDrink5.isHidden = false
        lbColor5.isHidden = false
        lbDescription5.isHidden = false
        lbEffect5.isHidden = false
        lbPrice5.isHidden = false
    }
    
    func showRandomDrinks() {
        var drink1 = drinkManager.getRandomDrink()
        var drink2 = drinkManager.getRandomDrink()
        var drink3 = drinkManager.getRandomDrink()
        var drink4 = drinkManager.getRandomDrink()
        var drink5 = drinkManager.getRandomDrink()
        
        while drink1.name == drink2.name || drink1.name == drink3.name || drink1.name == drink4.name
            || drink1.name == drink5.name    || drink2.name == drink3.name || drink2.name == drink4.name
            || drink2.name == drink5.name || drink3.name == drink4.name || drink3.name == drink5.name
            || drink4.name == drink5.name {
                
            drink1 = drinkManager.getRandomDrink()
            drink2 = drinkManager.getRandomDrink()
            drink3 = drinkManager.getRandomDrink()
            drink4 = drinkManager.getRandomDrink()
            drink5 = drinkManager.getRandomDrink()
        }
        self.lbDrink1.text = drink1.name
        self.lbColor1.text = drink1.color
        self.lbDescription1.text = drink1.description
        self.lbEffect1.text = drink1.effect
        self.lbPrice1.text = drink1.price
        
        self.lbDrink2.text = drink2.name
        self.lbColor2.text = drink2.color
        self.lbDescription2.text = drink2.description
        self.lbEffect2.text = drink2.effect
        self.lbPrice2.text = drink2.price
        
        self.lbDrink3.text = drink3.name
        self.lbColor3.text = drink3.color
        self.lbDescription3.text = drink3.description
        self.lbEffect3.text = drink3.effect
        self.lbPrice3.text = drink3.price
        
        self.lbDrink4.text = drink4.name
        self.lbColor4.text = drink4.color
        self.lbDescription4.text = drink4.description
        self.lbEffect4.text = drink4.effect
        self.lbPrice4.text = drink4.price
        
        self.lbDrink5.text = drink5.name
        self.lbColor5.text = drink5.color
        self.lbDescription5.text = drink5.description
        self.lbEffect5.text = drink5.effect
        self.lbPrice5.text = drink5.price
    }

}

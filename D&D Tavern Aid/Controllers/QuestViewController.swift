//
//  QuestViewController.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 21/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import UIKit

class QuestViewController: UIViewController {

    
    @IBOutlet weak var lbQuest1: UILabel!
    @IBOutlet weak var lbQuest2: UILabel!
    @IBOutlet weak var lbQuest3: UILabel!
    @IBOutlet weak var lbQuest4: UILabel!
    @IBOutlet weak var lbQuest5: UILabel!
    
    @IBOutlet weak var btQuest: UIButton!
    
    let questManager = QuestsManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func generateQuest(_ sender: UIButton) {
        showRandomQuest()
        lbQuest1.isHidden = false
        lbQuest2.isHidden = false
        lbQuest3.isHidden = false
        lbQuest4.isHidden = false
        lbQuest5.isHidden = false
    }
    
    func showRandomQuest() {
        var quest1 = questManager.getChosenQuest()
        var quest2 = questManager.getChosenQuest()
        var quest3 = questManager.getChosenQuest()
        var quest4 = questManager.getChosenQuest()
        var quest5 = questManager.getChosenQuest()
    
        while quest1 == quest2 || quest1 == quest3 || quest1 == quest4 || quest1 == quest5 || quest2 == quest3
                || quest2 == quest4 || quest2 == quest5 || quest3 == quest4 || quest3 == quest5
                || quest4 == quest5 {
                    
            quest1 = questManager.getChosenQuest()
            quest2 = questManager.getChosenQuest()
            quest3 = questManager.getChosenQuest()
            quest4 = questManager.getChosenQuest()
            quest5 = questManager.getChosenQuest()
        }
        self.lbQuest1.text = quest1
        self.lbQuest2.text = quest2
        self.lbQuest3.text = quest3
        self.lbQuest4.text = quest4
        self.lbQuest5.text = quest5
    }

}

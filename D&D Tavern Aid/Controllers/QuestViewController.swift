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
        
        
        let q1 = quest1, q2 = quest2, q3 = quest3, q4 = quest4, q5 = quest5
    
        while q1 == q2 || q1 == q3 || q1 == q4 || q1 == q5 || q2 == q3
                || q2 == q4 || q2 == q5 || q3 == q4 || q3 == q5 || q4 == q5 {
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

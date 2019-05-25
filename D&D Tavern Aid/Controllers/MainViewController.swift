//
//  MainViewController.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 17/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var btTavern: UIButton!
    @IBOutlet weak var btBartender: UIButton!
    @IBOutlet weak var btClientele: UIButton!
    @IBOutlet weak var btAccommodation: UIButton!
    @IBOutlet weak var btRumor: UIButton!
    
    @IBOutlet weak var lbTavernName: UILabel!
    
    
    @IBOutlet weak var lbBartenderName: UILabel!
    @IBOutlet weak var lbBartenderGender: UILabel!
    @IBOutlet weak var lbBartenderRace: UILabel!
    @IBOutlet weak var lbBartenderLevel: UILabel!
    @IBOutlet weak var lbBartenderClass: UILabel!
 
    @IBOutlet weak var lbClientele: UILabel!
    
    @IBOutlet weak var lbAccommodations: UILabel!
    
    @IBOutlet weak var lbRumor1: UILabel!
    @IBOutlet weak var lbRumor2: UILabel!
    
   
    
    let tavernNameManager = TavernNameManager()
    let bartenderManager = BartenderManager()
    let rumorsManager = RumorsManager()
    let clienteleManager = ClienteleManager()
    let accommodationManager = AccomodationsManager()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btTavern.layer.cornerRadius = 6     //rounded border
        btBartender.layer.cornerRadius = 6     //rounded border
        btClientele.layer.cornerRadius = 6     //rounded border
        btAccommodation.layer.cornerRadius = 6     //rounded border
        btRumor.layer.cornerRadius = 6     //rounded border
        
        btTavern.layer.borderWidth = 2      //border thickness
        btBartender.layer.borderWidth = 2      //border thickness
        btClientele.layer.borderWidth = 2      //border thickness
        btAccommodation.layer.borderWidth = 2      //border thickness
        btRumor.layer.borderWidth = 2      //border thickness
        
    
        btTavern.layer.borderColor = UIColor(red: 224.0/255.0, green: 219.0/255.0, blue: 209.0/255.0, alpha: 1.0).cgColor
        btBartender.layer.borderColor = UIColor(red: 224.0/255.0, green: 219.0/255.0, blue: 209.0/255.0, alpha: 1.0).cgColor
        btClientele.layer.borderColor = UIColor(red: 224.0/255.0, green: 219.0/255.0, blue: 209.0/255.0, alpha: 1.0).cgColor
        btAccommodation.layer.borderColor = UIColor(red: 224.0/255.0, green: 219.0/255.0, blue: 209.0/255.0, alpha: 1.0).cgColor
        btRumor.layer.borderColor = UIColor(red: 224.0/255.0, green: 219.0/255.0, blue: 209.0/255.0, alpha: 1.0).cgColor
        
        
        btBartender.layer.cornerRadius = 6
        btClientele.layer.cornerRadius = 6
        btAccommodation.layer.cornerRadius = 6
        btRumor.layer.cornerRadius = 6
        
        btTavern.layer.masksToBounds = true
        
        
        // Do any additional setup after loading the view.
    }
    
    
//    showRandomBartender()
//    showRandomTavernName()
//    showRandomClientele()
//    showRandomClientele()
//    showRandomRumor()
//    showRandomAccommodation()
    
    
    /*
      @IBOutlet weak var lbTavernName: UILabel!
     @IBOutlet weak var lbBartenderName: UILabel!
     @IBOutlet weak var lbBartenderGender: UILabel!
     @IBOutlet weak var lbBartenderRace: UILabel!
     @IBOutlet weak var lbBartenderLevel: UILabel!
     @IBOutlet weak var lbBartenderClass: UILabel!
     
     @IBOutlet weak var lbClientele: UILabel!
     
     @IBOutlet weak var lbAccommodations: UILabel!
     
     @IBOutlet weak var lbRumor1: UILabel!
     @IBOutlet weak var lbRumor2: UILabel!
 */
    @IBAction func generateTavernName(_ sender: UIButton) {
        showRandomTavernName()
        lbTavernName.isHidden = false
    }
    
    @IBAction func generateBartender(_ sender: UIButton) {
        showRandomBartender()
        lbBartenderName.isHidden = false
        lbBartenderGender.isHidden = false
        lbBartenderRace.isHidden = false
        lbBartenderLevel.isHidden = false
        lbBartenderClass.isHidden = false
    }
    
    @IBAction func generateClientele(_ sender: UIButton) {
        showRandomClientele()
        lbClientele.isHidden = false
    }
    
    @IBAction func generateAccommodation(_ sender: UIButton) {
        showRandomAccommodation()
        lbAccommodations.isHidden = false
    }
    
    @IBAction func generateRumor(_ sender: UIButton) {
        showRandomRumor()
        lbRumor1.isHidden = false
        lbRumor2.isHidden = false
    }
    
    func showRandomTavernName() {
        let tavernName = tavernNameManager.getRandomTavernName()
        self.lbTavernName.text = tavernName
    }
    
    func showRandomBartender() {

        let bartenderRace = bartenderManager.getRandomBartenderRace()
        let bartenderGender = bartenderManager.getRandomBartenderGender()
        let bartenderName = bartenderManager.getRandomBartenderName()
        let bartenderClass = bartenderManager.getRandomBartenderClasses()
        let bartenderLevel = bartenderManager.getRandomBartenderLevel()
        
        self.lbBartenderName.text = bartenderName
        self.lbBartenderRace.text = bartenderRace
        self.lbBartenderClass.text = bartenderClass
        self.lbBartenderGender.text = bartenderGender
        self.lbBartenderLevel.text = String(bartenderLevel)
    }
    
    func showRandomClientele() {
        let clientele = clienteleManager.getRandomClientele()
        self.lbClientele.text = clientele
    }
    
    func showRandomAccommodation() {
        let accommodation = accommodationManager.getRandomAccommodation()
        self.lbAccommodations.text = accommodation
    }
    
    func showRandomRumor() {
        var rumor1 = rumorsManager.getRandomRumor()
        var rumor2 = rumorsManager.getRandomRumor()
        while rumor1 == rumor2  {
            rumor1 = rumorsManager.getRandomRumor()
            rumor2 = rumorsManager.getRandomRumor()
        }
        self.lbRumor1.text = rumor1
        self.lbRumor2.text = rumor2
    }
    
 
    
    //  func loadApi() {
    //        guard let url = tfURL.text else {
    //            print("A url é inválida!")
    //            return
    //        }
    //        //iniciar o loading
    //        rumorsManager.loadDataFromURL(url: url,completion: { (string) in
    //            if string ==  nil {
    //                self.showRandomRumor()
    //            }
    //            // finalizar o loading
    //        })
    //    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


